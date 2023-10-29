import 'package:snippett/Domain/entity/portal_info.dart';

class ListPortal {
  List<dynamic> listPortal;

  ListPortal({required this.listPortal});

  factory ListPortal.fromJson(List<dynamic> jsonList) {
    return ListPortal(
        listPortal: (jsonList).map((e) => PortalInfo.fromMap(e)).toList());
  }
}
