import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Module {
  int id_;
  String name;
  String portal_id;
  String url_file;
  Module({
    required this.id_,
    required this.name,
    required this.portal_id,
    required this.url_file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_': id_,
      'name': name,
      'portal_id': portal_id,
      'url_file': url_file,
    };
  }

  factory Module.fromMap(Map<String, dynamic> map) {
    return Module(
      id_: map['id_'] as int,
      name: map['name'] as String,
      portal_id: map['portal_id'] as String,
      url_file: map['url_file'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Module.fromJson(String source) =>
      Module.fromMap(json.decode(source) as Map<String, dynamic>);
}
