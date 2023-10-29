import 'dart:convert';

import 'package:hive/hive.dart';
part 'portal_info.g.dart';

@HiveType(typeId: 0)
class PortalInfo {
  @HiveField(0)
  String id_;
  @HiveField(1)
  String name;
  @HiveField(2)
  String phone_number;
  @HiveField(3)
  String inn;
  @HiveField(4)
  String address;
  @HiveField(5)
  String? logo;
  @HiveField(6)
  String? color;
  @HiveField(7)
  String? purpose;
  @HiveField(8)
  String? mission;
  @HiveField(9)
  String? description;
  PortalInfo({
    required this.id_,
    required this.name,
    required this.phone_number,
    required this.inn,
    required this.address,
    required this.logo,
    required this.color,
    required this.purpose,
    required this.mission,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_': id_,
      'name': name,
      'phone_number': phone_number,
      'inn': inn,
      'address': address,
      'logo': logo,
      'color': color,
      'purpose': purpose,
      'mission': mission,
      'description': description,
    };
  }

  factory PortalInfo.fromMap(Map<String, dynamic> map) {
    return PortalInfo(
      id_: map['id_'] as String,
      name: map['name'] as String,
      phone_number: map['phone_number'] as String,
      inn: map['inn'] as String,
      address: map['address'] as String,
      logo: map['logo'] as String?,
      color: map['color'] as String?,
      purpose: map['purpose'] as String?,
      mission: map['mission'] as String?,
      description: map['description'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory PortalInfo.fromJson(String source) =>
      PortalInfo.fromMap(json.decode(source) as Map<String, dynamic>);
}
