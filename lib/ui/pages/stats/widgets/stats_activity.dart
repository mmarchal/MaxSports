import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/states/activity_state.dart';

// ignore: must_be_immutable
class StatsActivity extends StatelessWidget {
  StatsActivity({Key? key}) : super(key: key);

  DateFormat format = DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        if (state is ActivityStateLoaded) {
          return ListView.builder(
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
          );
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
