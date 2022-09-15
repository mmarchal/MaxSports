import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  gain,
  perte,
}

extension EtatPoidsExtension on EtatPoids {
  String get name {
    switch (this) {
      case EtatPoids.gain:
        return 'Gain';
      case EtatPoids.perte:
        return 'Perte';
    }
  }

  Color get color {
    switch (this) {
      case EtatPoids.gain:
        return Colors.red;
      case EtatPoids.perte:
        return Colors.green;
    }
  }
}
