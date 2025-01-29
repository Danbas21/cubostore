import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_validator.g.dart';
part 'form_validator.freezed.dart';

// Estado del formulario
@freezed
class FormState with _$FormState {
  const factory FormState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String phone,
    @Default({}) Map<String, String> errors,
  }) = _FormState;
}

// Provider del estado del formulario
@riverpod
class FormStateNotifier extends _$FormStateNotifier {
  @override
  FormState build() => const FormState();

  // Validadores
  String? validateEmail(String email) {
    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(pattern).hasMatch(email)) {
      return 'Email inválido';
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    }
    // Más validaciones según necesites
    return null;
  }

  // Actualizar campos
  void updateEmail(String email) {
    state = state.copyWith(
      email: email,
      errors: {
        ...state.errors,
        'email': validateEmail(email) ?? '',
      },
    );
  }

  void updatePassword(String password) {
    state = state.copyWith(
      password: password,
      errors: {
        ...state.errors,
        'password': validatePassword(password) ?? '',
      },
    );
  }

  // Validar formulario completo
  bool isFormValid() {
    return state.errors.values.every((error) => error.isEmpty);
  }
}

// Widget que usa el formulario
class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(formStateNotifierProvider);
    final formNotifier = ref.read(formStateNotifierProvider.notifier);

    return Form(
      child: Column(
        children: [
          TextFormField(
            onChanged: formNotifier.updateEmail,
            decoration: InputDecoration(
              errorText: formState.errors['email']?.isEmpty ?? true
                  ? null
                  : formState.errors['email'],
            ),
          ),
          TextFormField(
            onChanged: formNotifier.updatePassword,
            decoration: InputDecoration(
              errorText: formState.errors['password']?.isEmpty ?? true
                  ? null
                  : formState.errors['password'],
            ),
          ),
          ElevatedButton(
            onPressed: formNotifier.isFormValid()
                ? () {
                    // Procesar formulario
                  }
                : null,
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
