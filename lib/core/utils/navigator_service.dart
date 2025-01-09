import 'package:flutter/material.dart';

class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> pushNamed(String routeName, {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {bool routePredicate = false, dynamic arguments}) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (route) => routePredicate,
        arguments: arguments);
  }

  void goBack() {
    return navigatorKey.currentState?.pop();
  }

  Future<dynamic> popandPushNamed(String routeName, {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.popAndPushNamed(routeName, arguments: arguments);
  }
}
