
import 'dart:io';

import 'package:flutter/foundation.dart';

/// Checks for network connection
/// If there is network connection the function will return true
Future<bool> checkForInternetConnection() async {
  bool hasConnection;

  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      hasConnection = true;
    } else {
      hasConnection = false;
    }
  } on SocketException catch (_) {
    hasConnection = false;
  }

  if (kDebugMode) {
    debugPrint("IS CONNECTED TO INTERNET $hasConnection");
  }

  return hasConnection;
}