import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:max_design/objects/charts_data.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';

class StatsNotifier extends StateNotifier<List<ChartData>> {
  final WeightRepository weightRepository;

  StatsNotifier(this.weightRepository) : super([]);

  Future<void> getStatsDatas() async {
    final response = await weightRepository.getWeight();
    DateFormat format = DateFormat('dd/MM/yyyy');
    List<ChartData> datas = response.data
            ?.map(
              (e) => ChartData(format.format(e.date), e.poids),
            )
            .toList() ??
        [];

    state = datas;
  }
}
