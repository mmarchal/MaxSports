import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recap.g.dart';

@JsonSerializable()
class Recap {
  final double poids0;
  final DateTime date0;
  final double poids1;
  final DateTime date1;
  final double difference;
  final EtatPoids etat;

  factory Recap.fromJson(Map<String, dynamic> json) => _$RecapFromJson(json);

  Map<String, dynamic> toJson() => _$RecapToJson(this);

  Recap({
    required this.poids0,
    required this.date0,
    required this.poids1,
    required this.date1,
    required this.difference,
    required this.etat,
  });
}

enum EtatPoids {
  GAIN,
  PERTE,
}

extension EtatPoidsExtension on EtatPoids {
  String get name {
    switch (this) {
      case EtatPoids.GAIN:
        return 'Gain';
      case EtatPoids.PERTE:
        return 'Perte';
    }
  }

  Color get color {
    switch (this) {
      case EtatPoids.GAIN:
        return Colors.red;
      case EtatPoids.PERTE:
        return Colors.green;
    }
  }
}
