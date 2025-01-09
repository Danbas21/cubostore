import 'package:flutter/material.dart';

const num figma_design_width = 375;
const num figma_design_height = 812;
const num figma_design_status_bar = 0;

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get _height => ((this * _width) / figma_design_width);
  double get fSize => ((this * _width) / figma_design_width);
}

extension FormatExtension on double {
  String get f => this;
}

enum DeviceType { Mobile, Tablet, Desktop }

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
    deviceType = DeviceType.Mobile;
  }
}
