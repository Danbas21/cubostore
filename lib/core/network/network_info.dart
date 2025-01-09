import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:cubostore/main.dart';

final GlobalKey<ScaffoldMessengerState> globalMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<ConnectivityResult> get connectivityResult;

  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  Connectivity connectivity;

  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() => _networkInfo;

  NetworkInfo._internal(this.connectivity) {
    connectivity = connectivity;
  }

  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();

    if (result != ConnectivityResult.none) {
      return false;
    }
    return true;
  }

  @override
  Future<ConnectivityResult> get connectivityResult async {
    final results = await connectivity.checkConnectivity();
    return results.first;
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged.map((results) => results.first);
}

abstract class Failure {}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'No Internet Connection']) {
    if (globalMessengerKey.currentState != null) {
      globalMessengerKey.currentState!.showSnackBar(SnackBar(
        content: Text(message),
      ));
    }
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}