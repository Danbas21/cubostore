// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_utils.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$screenSizeHash() => r'b512f91ad9ea3aaffdca794c4bee97649419222a';

/// See also [ScreenSize].
@ProviderFor(ScreenSize)
final screenSizeProvider = AutoDisposeNotifierProvider<ScreenSize,
    (double width, double height)>.internal(
  ScreenSize.new,
  name: r'screenSizeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$screenSizeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ScreenSize = AutoDisposeNotifier<(double width, double height)>;
String _$deviceConfigHash() => r'2632b37278f31f56ec9dbc89e3ba2b18cc5f5c49';

/// See also [DeviceConfig].
@ProviderFor(DeviceConfig)
final deviceConfigProvider = AutoDisposeNotifierProvider<DeviceConfig,
    (DeviceType type, Orientation orientation)>.internal(
  DeviceConfig.new,
  name: r'deviceConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deviceConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DeviceConfig
    = AutoDisposeNotifier<(DeviceType type, Orientation orientation)>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
