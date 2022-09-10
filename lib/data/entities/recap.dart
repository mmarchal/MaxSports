import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recap.freezed.dart';
part 'recap.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Recap with _$Recap {
  const factory Recap({
    required double poidsRecent,
    required DateTime dateRecent,
    required double poidsLate,
    required DateTime dateLate,
    required double difference,
    required EtatPoids etat,
  }) = _Recap;
  const Recap._();
  factory Recap.fromJson(Map<String, dynamic> json) => _$RecapFromJson(json);
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
