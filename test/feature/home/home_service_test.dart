import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
 late  INetworkManager  networkManager ;
  setUp(() {
  networkManager = NetworkManage(
    isEnableLogger: true, 
    options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"),
 );
  });

  test('Sample Test', () {});
}
