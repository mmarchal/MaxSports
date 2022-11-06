import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/type_activity_bloc.dart';
import 'package:max_sports/data/states/type_activity_state.dart';
import 'package:max_sports/ui/pages/activity_v2/widgets/measure_widget.dart';
import 'package:max_sports/ui/pages/activity_v2/widgets/activity_carousel.dart';

class ActivitySelection extends StatelessWidget {
  const ActivitySelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TypeActivityBloc, TypeActivityState>(
      buildWhen: (previous, current) =>
          current is TypeActivityStateGetDatasLoaded,
      builder: (context, state) {
        if (state.currentListOfActivitesTypes != null) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActivityCarousel(
                activites: state.currentListOfActivitesTypes!,
              ),
              MeasureWidget(),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
