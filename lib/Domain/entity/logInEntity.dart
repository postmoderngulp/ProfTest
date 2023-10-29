import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class logInEntity {
  String role;
  TokenPair tokenPair;
  logInEntity({
    required this.role,
    required this.tokenPair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
      'tokenPair': tokenPair.toMap(),
    };
  }

  factory logInEntity.fromMap(Map<String, dynamic> map) {
    return logInEntity(
      role: map['role'] as String,
      tokenPair: TokenPair.fromMap(map['tokenPair'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory logInEntity.fromJson(String source) =>
      logInEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}

class TokenPair {
  String accessToken;
  String refreshToken;
  TokenPair({
    required this.accessToken,
    required this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }

  factory TokenPair.fromMap(Map<String, dynamic> map) {
    return TokenPair(
      accessToken: map['accessToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TokenPair.fromJson(String source) =>
      TokenPair.fromMap(json.decode(source) as Map<String, dynamic>);
}
