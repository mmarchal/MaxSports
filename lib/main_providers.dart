import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/data/backend_api.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/blocs/navigation_bloc.dart';
import 'package:max_sports/data/blocs/weight_bloc.dart';
import 'package:max_sports/data/repositories/activity_repository.dart';
import 'package:max_sports/data/repositories/weight_repository.dart';
import 'package:provider/provider.dart';

class MainProviders extends StatelessWidget {
  final ConfigService service;
  final Widget child;

  const MainProviders({
    Key? key,
    required this.service,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ConfigService>(
          create: (context) => service,
        ),
        Provider<Dio>(
          create: (context) => Dio(
            BaseOptions(
              headers: {
                'Content-Type': 'application/json',
              },
            ),
          ),
        ),
        Provider<BackendApi>(
          create: (context) => BackendApi(
            context.read(),
            baseUrl: context.read<ConfigService>().backendUrl ?? '',
          ),
        ),
        Provider<WeightRepository>(
          create: (context) => WeightRepository(
            api: context.read(),
          ),
        ),
        Provider<ActivityRepository>(
          create: (context) => ActivityRepository(
            api: context.read(),
          ),
        ),
        BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(),
        ),
        BlocProvider<WeightBloc>(
          create: (context) => WeightBloc(
            weightRepository: context.read(),
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
