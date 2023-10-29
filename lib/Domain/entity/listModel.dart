import 'package:snippett/Domain/entity/module.dart';
import 'package:snippett/Domain/entity/portal_info.dart';

class ListModel {
  List<Module> listModel;

  ListModel({required this.listModel});

  factory ListModel.fromJson(List<dynamic> jsonList) {
    return ListModel(
        listModel: (jsonList).map((e) => Module.fromMap(e)).toList());
  }
}
