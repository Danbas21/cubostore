import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'size_utils.g.dart';

// Primero definimos nuestro enum
enum DeviceType { mobile, tablet, desktop }

// Constantes de diseño
const num figma_design_width = 375;
const num figma_design_height = 812;

// Provider para el tamaño de pantalla
@riverpod
class ScreenSize extends _$ScreenSize {
  @override
  (double width, double height) build() {
    return (SizeUtils.width, SizeUtils.height);
  }
}

// Provider para la configuración del dispositivo
@riverpod
class DeviceConfig extends _$DeviceConfig {
  @override
  (DeviceType type, Orientation orientation) build() {
    final screenSize = ref.watch(screenSizeProvider);
    final width = screenSize.$1;

    // Determinamos el tipo de dispositivo basado en el ancho
    final deviceType = width < 600
        ? DeviceType.mobile
        : width < 900
            ? DeviceType.tablet
            : DeviceType.desktop;

    return (deviceType, SizeUtils.orientation);
  }
}

// Widget constructor responsivo
class ResponsiveBuilder extends ConsumerWidget {
  const ResponsiveBuilder({required this.builder});

  final Widget Function(
          BuildContext context, Orientation orientation, DeviceType deviceType)
      builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceConfig = ref.watch(deviceConfigProvider);

    return builder(
        context,
        deviceConfig.$2, // orientation
        deviceConfig.$1 // deviceType
        );
  }
}

// Utilidades de tamaño
class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double width;
  static late double height;

  static void setScreenSize({
    required BoxConstraints constraints,
    required Orientation currentOrientation,
  }) {
    boxConstraints = constraints;
    orientation = currentOrientation;
    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth;
      height = boxConstraints.maxHeight;
    } else {
      width = boxConstraints.maxHeight;
      height = boxConstraints.maxWidth;
    }
    deviceType = DeviceType.mobile;
  }
}

// Extensiones útiles
extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get _height => ((this * _width) / figma_design_width);
  double get fSize => ((this * _width) / figma_design_width);
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}
