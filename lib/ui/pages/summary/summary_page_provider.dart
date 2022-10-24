import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/home_bloc.dart';

class SummaryPageProvider extends StatelessWidget {
  final Widget child;

  const SummaryPageProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(
            poidsRepository: context.read(),
          )..getWeights(),
        ),
      ],
      child: child,
    );
  }
}
