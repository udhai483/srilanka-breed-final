import 'dart:convert';

import 'package:flutter/foundation.dart';

class DogModel {
  String id;
  String breedName;
  String imageUrl;
  String description;
  List<String> imageUrlList;
  String origin;
  int lifeSpam;
  String temperament;
  String size;
  int weight;
  String femaleHeight;
  String femaleWeight;
  String maleHeight;
  String maleWeight;
  List<String> otherName;
  DogModel({
    required this.id,
    required this.breedName,
    required this.imageUrl,
    required this.description,
    required this.imageUrlList,
    required this.origin,
    required this.lifeSpam,
    required this.temperament,
    required this.size,
    required this.weight,
    required this.femaleHeight,
    required this.femaleWeight,
    required this.maleHeight,
    required this.maleWeight,
    required this.otherName,
  });

  DogModel copyWith({
    String? id,
    String? breedName,
    String? imageUrl,
    String? description,
    List<String>? imageUrlList,
    String? origin,
    int? lifeSpam,
    String? temperament,
    String? size,
    int? weight,
    String? femaleHeight,
    String? femaleWeight,
    String? maleHeight,
    String? maleWeight,
    List<String>? otherName,
  }) {
    return DogModel(
      id: id ?? this.id,
      breedName: breedName ?? this.breedName,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      imageUrlList: imageUrlList ?? this.imageUrlList,
      origin: origin ?? this.origin,
      lifeSpam: lifeSpam ?? this.lifeSpam,
      temperament: temperament ?? this.temperament,
      size: size ?? this.size,
      weight: weight ?? this.weight,
      femaleHeight: femaleHeight ?? this.femaleHeight,
      femaleWeight: femaleWeight ?? this.femaleWeight,
      maleHeight: maleHeight ?? this.maleHeight,
      maleWeight: maleWeight ?? this.maleWeight,
      otherName: otherName ?? this.otherName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'breedName': breedName,
      'imageUrl': imageUrl,
      'description': description,
      'imageUrlList': imageUrlList,
      'origin': origin,
      'lifeSpam': lifeSpam,
      'temperament': temperament,
      'size': size,
      'weight': weight,
      'femaleHeight': femaleHeight,
      'femaleWeight': femaleWeight,
      'maleHeight': maleHeight,
      'maleWeight': maleWeight,
      'otherName': otherName,
    };
  }

  factory DogModel.fromMap(Map<String, dynamic> map) {
    return DogModel(
      id: map['id'],
      breedName: map['breedName'],
      imageUrl: map['imageUrl'],
      description: map['description'],
      imageUrlList: List<String>.from(map['imageUrlList']),
      origin: map['origin'],
      lifeSpam: map['lifeSpam'],
      temperament: map['temperament'],
      size: map['size'],
      weight: map['weight'],
      femaleHeight: map['femaleHeight'],
      femaleWeight: map['femaleWeight'],
      maleHeight: map['maleHeight'],
      maleWeight: map['maleWeight'],
      otherName: List<String>.from(map['otherName']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DogModel.fromJson(String source) =>
      DogModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DogModel(id: $id, breedName: $breedName, imageUrl: $imageUrl, description: $description, imageUrlList: $imageUrlList, origin: $origin, lifeSpam: $lifeSpam, temperament: $temperament, size: $size, weight: $weight, femaleHeight: $femaleHeight, femaleWeight: $femaleWeight, maleHeight: $maleHeight, maleWeight: $maleWeight, otherName: $otherName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DogModel &&
        other.id == id &&
        other.breedName == breedName &&
        other.imageUrl == imageUrl &&
        other.description == description &&
        listEquals(other.imageUrlList, imageUrlList) &&
        other.origin == origin &&
        other.lifeSpam == lifeSpam &&
        other.temperament == temperament &&
        other.size == size &&
        other.weight == weight &&
        other.femaleHeight == femaleHeight &&
        other.femaleWeight == femaleWeight &&
        other.maleHeight == maleHeight &&
        other.maleWeight == maleWeight &&
        listEquals(other.otherName, otherName);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        breedName.hashCode ^
        imageUrl.hashCode ^
        description.hashCode ^
        imageUrlList.hashCode ^
        origin.hashCode ^
        lifeSpam.hashCode ^
        temperament.hashCode ^
        size.hashCode ^
        weight.hashCode ^
        femaleHeight.hashCode ^
        femaleWeight.hashCode ^
        maleHeight.hashCode ^
        maleWeight.hashCode ^
        otherName.hashCode;
  }
}
