import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutter_first/home/model/home_model.dart';
import 'package:tdd_flutter_first/home/services/home_service.dart';
import 'package:vexana/vexana.dart';

void main() {
  late INetworkManager networkManager;
  
  setUp(() {
    networkManager = NetworkManager<HomeModel>(
      isEnableLogger: true,
      options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"),
    );
    
  });

  test('Gel All List Data', () async {
    final listDatas = await networkManager.send<HomeModel, List<HomeModel>>(
        '/users',
        parseModel: HomeModel(),
        method: RequestType.GET);
    expect(listDatas.data, isNotNull);
  });


}
