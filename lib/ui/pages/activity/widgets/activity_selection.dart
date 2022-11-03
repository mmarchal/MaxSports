import 'package:flutter/material.dart';
import 'package:max_sports/ui/pages/activity/widgets/measure_widget.dart';
import 'package:max_sports/ui/pages/activity/widgets/activity_carousel.dart';

class ActivitySelection extends StatelessWidget {
  const ActivitySelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (state.currentListOfActivitesTypes.isNotEmpty) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActivityCarousel(
            activites: state.currentListOfActivitesTypes,
          ),
          MeasureWidget(),
        ],
      );
    } else {
      return const CircularProgressIndicator();
    }
  }
}
