import 'dart:async';

import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetChecker {
  late bool isConnected;
  Future<bool> main() async {
    //print('''The statement 'this machine is connected to the Internet' is: ''');

    isConnected = await InternetConnectionChecker().hasConnection;
    return isConnected;
  }
}
