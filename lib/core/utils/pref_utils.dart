import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'pref_utils.g.dart';

@riverpod
Future<SharedPreferences> sharedPreferences(Ref ref) async {
  return await SharedPreferences.getInstance();
}

@Riverpod(keepAlive: true)
class ThemePreferencesNotifier extends _$ThemePreferencesNotifier {
  @override
  Future<String> build() async {
    final prefs = await ref.watch(sharedPreferencesProvider.future);

    return prefs.getString('themeData') ?? 'primary';
  }

  void setTheme(String theme) async {
    final prefs = await ref.read(sharedPreferencesProvider.future);

    await prefs.setString('themeData', theme);

    ref.refresh(
      sharedPreferencesProvider,
    );
  }

  void removeTheme() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);

    await prefs.remove('themeData');

    ref.refresh(
      sharedPreferencesProvider,
    );
  }
}
