import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_design/widgets/button/design_button.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/states/activity_state.dart';

import '../../../../providers.dart';

class ActivityResume extends ConsumerWidget {
  const ActivityResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        return Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              const DesignText(
                text: 'Résumé',
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 16),
              DesignText(
                text: 'Activité : ${state.currentSelectedType?.type ?? ''}',
              ),
              DesignText(
                text: 'Distance : ${state.currentDistance ?? ''} km',
              ),
              DesignText(
                text: 'Durée : ${state.currentTime ?? ''} min',
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 16),
                width: MediaQuery.of(context).size.width / 2,
                child: DesignButton.elevated(
                  icon: const Icon(
                    Icons.check,
                  ),
                  text: 'Valider',
                  onPressed: (state.allDataIsFilled)
                      ? () {
                          Activity activity = Activity(
                              typeActivity: state.currentSelectedType!,
                              distance: state.currentDistance!,
                              duration:
                                  double.parse(state.currentTime!.toString()),
                              date: DateTime.now());
                          ref
                              .read(activityProvider.notifier)
                              .postActivity(activity);
                        }
                      : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
