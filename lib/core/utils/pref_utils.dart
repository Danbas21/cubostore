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
    // Cambiamos el valor por defecto a 'lightCode'
    return prefs.getString('themeData') ?? 'lightCode';
  }

  Future<void> setTheme(String theme) async {
    final prefs = await ref.read(sharedPreferencesProvider.future);

    // Validamos que el tema sea válido
    if (theme != 'lightCode' && theme != 'darkCode') {
      theme = 'lightCode'; // Valor por defecto si el tema no es válido
    }

    await prefs.setString('themeData', theme);

    // Actualizamos el estado
    state = AsyncValue.data(theme);
  }

  Future<void> toggleTheme() async {
    final currentTheme = await future;
    final newTheme = currentTheme == 'lightCode' ? 'darkCode' : 'lightCode';
    await setTheme(newTheme);
  }

  Future<void> removeTheme() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.remove('themeData');

    // Actualizamos el estado al valor por defecto
    state = const AsyncValue.data('lightCode');
  }
}
