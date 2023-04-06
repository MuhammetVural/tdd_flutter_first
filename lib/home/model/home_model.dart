import 'package:vexana/vexana.dart';

class HomeModel extends INetworkModel<HomeModel> {
  int? id;
  String? name;
  String? username;
  String? email;

  HomeModel({this.id, this.name, this.username, this.email});
  @override
  HomeModel fromJson(Map<String, dynamic> json) {
    return HomeModel.fromJson(json);
  }

  HomeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['username'] = username;
    data['email'] = email;
    return data;
  }
}
