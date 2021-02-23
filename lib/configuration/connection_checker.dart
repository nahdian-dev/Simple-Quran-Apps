import 'package:data_connection_checker/data_connection_checker.dart';

Future<DataConnectionStatus> checkInternet() async {
  print("The statement 'this machine is connected to the Internet' is: ");
  print(await DataConnectionChecker().hasConnection);
  print("Current status: ${await DataConnectionChecker().connectionStatus}");
  print("Last results: ${DataConnectionChecker().lastTryResults}");

  var listener = DataConnectionChecker().onStatusChange.listen((status) {
    switch (status) {
      case DataConnectionStatus.connected:
        print('Data connection is available.');
        break;
      case DataConnectionStatus.disconnected:
        print('You are disconnected from the internet.');
        break;
    }
  });

  await listener.cancel();

  return await DataConnectionChecker().connectionStatus;
}
