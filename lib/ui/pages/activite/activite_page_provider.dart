import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/type_activite_bloc.dart';

class ActivitePageProvider extends StatelessWidget {
  final Widget child;

  const ActivitePageProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TypeActiviteBloc>(
          create: (context) => TypeActiviteBloc()..getAllTypes(),
        ),
      ],
      child: child,
    );
  }
}
