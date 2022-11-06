import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/blocs/type_activity_bloc.dart';

class ActivityPageProvider extends StatelessWidget {
  final Widget child;

  const ActivityPageProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ActivityBloc>(
          create: (context) => ActivityBloc(
            activityRepository: context.read(),
          ),
        ),
        BlocProvider<TypeActivityBloc>(
          create: (context) => TypeActivityBloc(
            activityRepository: context.read(),
          )..getAllTypes(),
        ),
      ],
      child: child,
    );
  }
}
