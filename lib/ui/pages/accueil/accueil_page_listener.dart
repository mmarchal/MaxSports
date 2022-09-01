import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/backend_bloc.dart';
import 'package:max_sports/data/states/backend_state.dart';

class AccueilPageListener extends StatelessWidget {
  final Widget child;

  const AccueilPageListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BackendBloc, BackendState>(
          listener: (context, state) => state.maybeMap(
            getWeightLoading: (value) => showDialog(
              context: context,
              builder: ((context) => const Center(
                    child: CircularProgressIndicator(),
                  )),
            ),
            getWeightLoaded: (value) => Navigator.pop(context),
            orElse: () => null,
          ),
        ),
      ],
      child: child,
    );
  }
}
