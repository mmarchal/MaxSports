import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/dialog.dart';
import 'package:max_sports/data/blocs/weight_bloc.dart';
import 'package:max_sports/data/states/weight_state.dart';
import 'package:max_sports/ui/widgets/app_loader.dart';

class WeightPageListener extends StatelessWidget {
  final Widget child;

  const WeightPageListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<WeightBloc, WeightState>(
          listener: (context, state) => state.maybeMap(
            sendWeightLoading: (value) => showLoaderOverlay(context),
            sendWeightLoaded: (value) {
              hideLoaderOverlay();
              successToast('Mesure enregistré !');
              return null;
            },
            failed: (value) {
              hideLoaderOverlay();
              defaultErrorDialog(
                context: context,
                error: value.error,
              );
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
