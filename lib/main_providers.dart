import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/navigation_bloc.dart';
import 'package:max_sports/data/blocs/poids_bloc.dart';
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
        BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(),
        ),
        BlocProvider<PoidsBloc>(
          create: (context) => PoidsBloc(),
        ),
      ],
      child: child,
    );
  }
}
