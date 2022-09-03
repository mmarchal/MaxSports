import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/dialog.dart';
import 'package:max_sports/data/blocs/home_bloc.dart';
import 'package:max_sports/data/states/home_state.dart';
import 'package:max_sports/ui/widgets/app_loader.dart';

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
        BlocListener<HomeBloc, HomeState>(
          listener: (context, state) => state.maybeMap(
            getWeightLoading: (value) => showLoaderOverlay(context),
            getWeightLoaded: (value) => hideLoaderOverlay(),
            failed: (value) {
              hideLoaderOverlay();
              defaultErrorDialog(context: context, error: value.error);
              return null;
            },
            orElse: () => null,
          ),
        ),
      ],
      child: child,
    );
  }
}
