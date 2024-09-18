import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkListener {
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  // Function to start listening to network changes
  void startListening(BuildContext context) {
    _subscription = Connectivity().onConnectivityChanged.listen((result) {
      if (result.contains(ConnectivityResult.none)) {
        _showAlert(context, 'You are offline!', Colors.red);
      } else {
        _showAlert(context, 'You are back online!', Colors.green);
      }
    });
  }

  // Function to stop listening (optional, for cleanup)
  void stopListening() {
    _subscription?.cancel();
  }

  // Function to show alert or toast
  void _showAlert(BuildContext context, String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
