import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkStatus {
  Future<bool> get isConnected;
}

class NetworkStatusImp implements NetworkStatus {
  NetworkStatusImp(this.internetConnection);

  final InternetConnection internetConnection;

  @override
  Future<bool> get isConnected async => await internetConnection.hasInternetAccess;
}