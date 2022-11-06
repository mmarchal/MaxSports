import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';

class WeightNotifier extends StateNotifier<List<Weight>> {
  final WeightRepository weightRepository;

  WeightNotifier(this.weightRepository) : super([]);

  Future<void> postWeight(Weight weight) async {
    final response = await weightRepository.postWeight(weight);
    state = [...state, response.data!];
  }
}
