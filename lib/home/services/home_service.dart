import 'package:tdd_flutter_first/home/model/home_model.dart';
import 'package:vexana/vexana.dart';

abstract class IHomeService {
  final INetworkManager networkManager;

  IHomeService(this.networkManager);
  Future<List<HomeModel>?> getAllItems();
}

class HomeService extends IHomeService {
  HomeService(super.networkManager);

  @override
  Future<List<HomeModel>?> getAllItems() async {
    final response = await networkManager.send<HomeModel, List<HomeModel>>(
        '/users',
        parseModel: HomeModel(),
        method: RequestType.GET);
    return response.data;
  }
}
