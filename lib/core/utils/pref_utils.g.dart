// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pref_utils.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'dc403fbb1d968c7d5ab4ae1721a29ffe173701c7';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider =
    AutoDisposeFutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedPreferencesRef = AutoDisposeFutureProviderRef<SharedPreferences>;
String _$themePreferencesNotifierHash() =>
    r'333637032ca8b1394d0ccbaffcca75467cbe68ed';

/// See also [ThemePreferencesNotifier].
@ProviderFor(ThemePreferencesNotifier)
final themePreferencesNotifierProvider =
    AsyncNotifierProvider<ThemePreferencesNotifier, String>.internal(
  ThemePreferencesNotifier.new,
  name: r'themePreferencesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themePreferencesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemePreferencesNotifier = AsyncNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
