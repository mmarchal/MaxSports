import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/states/activity_state.dart';

class StatsActivity extends StatelessWidget {
  StatsActivity({Key? key}) : super(key: key);

  final DateFormat format = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        if (state is ActivityStateLoaded) {
          state.activities.sort((a, b) => b.date.compareTo(a.date));
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                DesignText(
                  text:
                      'Distance moyenne : ${state.averageDistance.toStringAsFixed(2)} km',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 10),
                DesignText(
                  text:
                      'Temps moyen : ${state.averageTime.toStringAsFixed(2)} min',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 10),
                DesignText(
                  text:
                      'Activité favorite : ${state.favoriteActivityType?.type}',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.activities.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: DesignText(
                          text: state.activities[index].typeActivity.type,
                          fontSize: 18,
                        ),
                        subtitle: DesignText(
                          text: format.format(state.activities[index].date),
                          fontSize: 16,
                        ),
                        trailing: DesignText(
                          text:
                              '${state.activities[index].distance} km en ${state.activities[index].duration} min',
                          fontSize: 16,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
          /*return ListView.builder(
            itemCount: state.activities.length,
            itemBuilder: (context, index) {
              final activity = state.activities[index];
              return ListTile(
                title: Text(
                  format.format(activity.date),
                ),
                subtitle: Text(activity.typeActivity.type),
                trailing: Text(activity.distance.toString()),
              );
            },
          );*/
        } else if (state is ActivityStateFailed) {
          return Center(
            child: DesignText(
              text: state.error?.content ?? '',
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
