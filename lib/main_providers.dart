import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:provider/provider.dart';

class MainProviders extends StatelessWidget {
  final Widget child;

  const MainProviders({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ActivityRepository>(
          create: (context) => ActivityRepository(
            api: context.read(),
          ),
        ),
        BlocProvider<ActivityBloc>(
          create: (context) => ActivityBloc(
            activityRepository: context.read(),
          )..getActivities(),
        ),
      ],
      child: child,
    );
  }
}
