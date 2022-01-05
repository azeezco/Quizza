import 'dart:async';

import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetChecker {
  Future<bool> check() async {
    //print('''The statement 'this machine is connected to the Internet' is: ''');

    final bool isConnected = await InternetConnectionChecker().hasConnection;
    return isConnected;
  }
}
