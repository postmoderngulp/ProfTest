import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:snippett/Domain/entity/listModel.dart';
import 'package:snippett/Domain/entity/listportal.dart';
import 'package:snippett/Domain/entity/logInEntity.dart';
import 'package:snippett/Domain/entity/portal.dart';
import 'package:snippett/Domain/entity/portal_info.dart';

class Api {
  Future<logInEntity> logIn(String email, String password) async {
    Map<String, dynamic> body = {
      "email": email,
      "password": password,
    };
    final headers = {'Content-Type': 'application/json'};
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/users/sign_in');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
    return logInEntity.fromJson(response.body);
  }

  Future<portal> createPortal(String email, String password, String name,
      String number, String inn, String address) async {
    Map<String, dynamic> body = {
      "email": email,
      "password": password,
      "name": name,
      "phone_number": number,
      "inn": inn,
      "address": address
    };
    final headers = {'Content-Type': 'application/json'};
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/create');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
    return portal.fromJson(response.body);
  }

  Future<ListPortal> getMyPortal(String token) async {
    const url =
        "http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/my_portals";
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    final response = await http.get(Uri.parse(url), headers: headers);
    var body = jsonDecode(response.body);
    print(response.statusCode);
    print(response.body);
    return ListPortal.fromJson(body);
  }

  Future<ListPortal> getAllPortal(String token) async {
    const url =
        "http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/all_portals";
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    final response = await http.get(Uri.parse(url), headers: headers);
    var body = jsonDecode(response.body);
    print(response.statusCode);
    print(response.body);
    return ListPortal.fromJson(body);
  }

  Future<void> putPortal(
      String name,
      String number,
      String inn,
      String address,
      String color,
      String purpose,
      String mission,
      String description,
      String token,
      String portal_id) async {
    Map<String, dynamic> body = {
      "name": name,
      "phone_number": number,
      "inn": inn,
      "address": address,
      "color": color,
      "purpose": purpose,
      "mission": mission,
      "description": description
    };
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/info?portal_id=$portal_id');
    final response = await http.put(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future invite(
      String email, String portalId, String department, String token) async {
    Map<String, dynamic> body = {
      "email": email,
      "portal_id": portalId,
      "department_id": department
    };
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/invite');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future upGradeEmpl(String user_id, String token) async {
    Map<String, dynamic> body = {"user_id": user_id};
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/upgrade_employee');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future downGradeEmpl(String user_id, String token) async {
    Map<String, dynamic> body = {"user_id": user_id};
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/downgrade_employee');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future delPortal(String portalId, String token) async {
    Map<String, dynamic> body = {"portal_id": portalId};
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/delete');
    final response = await http.delete(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future<void> createDepartment(String name, int parentId, String portalId,
      String number, String inn, String address) async {
    Map<String, dynamic> body = {
      "name": name,
      "parent_id": parentId,
      "portal_id": portalId,
    };
    final headers = {'Content-Type': 'application/json'};
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/departments/create_department');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future delDeparment(int depId, String token) async {
    Map<String, dynamic> body = {"department_id": depId};
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/portals/departments/delete_department');
    final response = await http.delete(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future<void> createTest(
      String name,
      String moduleName,
      String description,
      int score,
      String correct,
      String a,
      String b,
      String c,
      String d,
      String token) async {
    Map<String, dynamic> body = {
      "name": name,
      "module_name": moduleName,
      "questions": [
        {
          "text": description,
          "score": score,
          "correct": correct,
          "a": a,
          "b": b,
          "c": c,
          "d": d
        }
      ]
    };
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/tests/create');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }

  Future<ListModel> getAllModule(String token) async {
    const url =
        "http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/tests/modules/get_all";
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    final response = await http.get(Uri.parse(url), headers: headers);
    var body = jsonDecode(response.body);
    print(response.statusCode);
    print(response.body);
    return ListModel.fromJson(json.decode(response.body));
  }

  Future<void> getAllTest(int moduleId, String token) async {
    var url = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/tests/get_all_by_module_id?module_id=$moduleId');

    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    final response = await http.get(url, headers: headers);
    var body = jsonDecode(response.body);
    print(response.statusCode);
    print(utf8.decode(response.bodyBytes));
  }

  Future<void> createModule(
      String name, String portalId, String urlFile, String token) async {
    Map<String, dynamic> body = {
      "name": name,
      "portal_id": portalId,
      "url_file": urlFile
    };
    final headers = {
      'Content-Type': 'application/json',
      "Authorization": token
    };
    String jsonBody = json.encode(body);
    var endPoint = Uri.parse(
        'http://xn----7sbpbfclakh1al9a7fxc.xn--p1ai:8000/tests/modules/create');
    final response = await http.post(
      endPoint,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(response.body);
  }
}
