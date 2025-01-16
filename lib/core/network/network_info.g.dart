// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectivityHash() => r'15246627d0ae599bcd01382c80d3d25b9e9b4e18';

/// See also [connectivity].
@ProviderFor(connectivity)
final connectivityProvider = Provider<Connectivity>.internal(
  connectivity,
  name: r'connectivityProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$connectivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ConnectivityRef = ProviderRef<Connectivity>;
String _$networkNotifierHash() => r'3f92e132a7deb99accd3ffa66a4293293dbcfc68';

/// See also [NetworkNotifier].
@ProviderFor(NetworkNotifier)
final networkNotifierProvider = AutoDisposeStreamNotifierProvider<
    NetworkNotifier, ConnectivityResult>.internal(
  NetworkNotifier.new,
  name: r'networkNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$networkNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NetworkNotifier = AutoDisposeStreamNotifier<ConnectivityResult>;
String _$errorHandlerNotifierHash() =>
    r'2c8cf1f4e5d91ade2f6034d34b9912cc53358957';

/// See also [ErrorHandlerNotifier].
@ProviderFor(ErrorHandlerNotifier)
final errorHandlerNotifierProvider =
    AutoDisposeNotifierProvider<ErrorHandlerNotifier, void>.internal(
  ErrorHandlerNotifier.new,
  name: r'errorHandlerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$errorHandlerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ErrorHandlerNotifier = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
