import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recap.g.dart';

@JsonSerializable()
class Recap {
  final double poidsRecent;
  final DateTime dateRecent;
  final double poidsLate;
  final DateTime dateLate;
  final double difference;
  final EtatPoids etat;

  factory Recap.fromJson(Map<String, dynamic> json) => _$RecapFromJson(json);

  Map<String, dynamic> toJson() => _$RecapToJson(this);

  Recap({
    required this.poidsRecent,
    required this.dateRecent,
    required this.poidsLate,
    required this.dateLate,
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