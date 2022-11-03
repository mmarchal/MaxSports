import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/providers.dart';
import 'package:max_sports/ui/pages/activity/widgets/measure_widget.dart';
import 'package:max_sports/ui/pages/activity/widgets/activity_carousel.dart';

class ActivitySelection extends ConsumerWidget {
  const ActivitySelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TypeActivity> activities = ref.watch(listOfTypeActivites);
    if (activities.isNotEmpty) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActivityCarousel(
            activites: activities,
          ),
          MeasureWidget(),
        ],
      );
    } else {
      return const CircularProgressIndicator();
    }
  }
}
