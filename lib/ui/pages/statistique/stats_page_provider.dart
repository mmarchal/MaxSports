import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/stats_bloc.dart';

class StatsPageProvider extends StatelessWidget {
  final Widget child;

  const StatsPageProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StatsBloc>(
          create: (context) => StatsBloc()..getAllWeights(),
        ),
      ],
      child: child,
    );
  }
}
