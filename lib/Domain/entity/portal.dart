import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class portal {
  String id_;
  String owner_id;
  String name;
  String phone_number;
  String inn;
  String address;
  portal({
    required this.id_,
    required this.owner_id,
    required this.name,
    required this.phone_number,
    required this.inn,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_': id_,
      'owner_id': owner_id,
      'name': name,
      'phone_number': phone_number,
      'inn': inn,
      'address': address,
    };
  }

  factory portal.fromMap(Map<String, dynamic> map) {
    return portal(
      id_: map['id_'] as String,
      owner_id: map['owner_id'] as String,
      name: map['name'] as String,
      phone_number: map['phone_number'] as String,
      inn: map['inn'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory portal.fromJson(String source) =>
      portal.fromMap(json.decode(source) as Map<String, dynamic>);
}
