import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/data/entities/recap.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';

class ResumeNotifier extends StateNotifier<Recap?> {
  final WeightRepository weightRepository;

  ResumeNotifier(this.weightRepository) : super(null);

  Future<void> getResumeWeight() async {
    state = (await weightRepository.getLastTwoWeight()).data;
  }
}
