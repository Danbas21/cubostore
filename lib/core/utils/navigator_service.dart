import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigator_service.g.dart';

// 1. Definimos los providers
@riverpod
GlobalKey<NavigatorState> navigatorKey(Ref ref) {
  return GlobalKey<NavigatorState>();
}

@riverpod
GoRouter router(Ref ref) {
  navigatorKeY:
  ref.watch(navigatorKeyProvider);
  return GoRouter(
    routes: [
      // tus rutas aquí
    ],
  );
}
