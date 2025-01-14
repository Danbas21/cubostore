import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_info.g.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// 1. Provider para la conectividad
@Riverpod(keepAlive: true)
Connectivity connectivity(ConnectivityRef ref) {
  return Connectivity();
}

// 2. Provider para monitorear la conexión
@riverpod
class NetworkNotifier extends _$NetworkNotifier {
  @override
  Stream<ConnectivityResult> build() {
    final connectivity = ref.watch(connectivityProvider);
    return connectivity.onConnectivityChanged.map((results) => results.first);
  }

  Future<bool> isConnected() async {
    final connectivity = ref.read(connectivityProvider);
    final result = await connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
}

// 3. Provider para manejar errores
@riverpod
class ErrorHandlerNotifier extends _$ErrorHandlerNotifier {
  @override
  void build() {}

  void showError(String message) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }
}

// 4. Errores tipados
sealed class AppError {
  final String message;
  const AppError(this.message);
}

class NetworkError extends AppError {
  const NetworkError([String message = 'No hay conexión a internet'])
      : super(message);
}

class ServerError extends AppError {
  const ServerError([String message = 'Error del servidor']) : super(message);
}

// 5. Widgets de estado de conexión
class NoConnectionWidget extends StatelessWidget {
  const NoConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.signal_wifi_off, size: 48),
          SizedBox(height: 16),
          Text('Sin conexión a Internet'),
        ],
      ),
    );
  }
}

class ConnectedWidget extends StatelessWidget {
  const ConnectedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.wifi, size: 48),
          SizedBox(height: 16),
          Text('Conectado'),
        ],
      ),
    );
  }
}

// 6. Widget principal
class NetworkStatusWidget extends ConsumerWidget {
  const NetworkStatusWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivityStream = ref.watch(networkNotifierProvider);

    return connectivityStream.when(
      data: (connectivity) {
        if (connectivity == ConnectivityResult.none) {
          return const NoConnectionWidget();
        }
        return const ConnectedWidget();
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }

  Future<void> fetchData(WidgetRef ref) async {
    try {
      if (!await ref.read(networkNotifierProvider.notifier).isConnected()) {
        ref
            .read(errorHandlerNotifierProvider.notifier)
            .showError('No hay conexión');
        return;
      }
      // Aquí iría tu lógica de fetch
    } on AppError catch (e) {
      ref.read(errorHandlerNotifierProvider.notifier).showError(e.message);
    }
  }
}
