import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/dialog.dart';
import 'package:max_sports/data/blocs/poids_bloc.dart';
import 'package:max_sports/data/states/poids_state.dart';
import 'package:max_sports/ui/widgets/app_loader.dart';

class PoidsPageListener extends StatelessWidget {
  final Widget child;

  const PoidsPageListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<PoidsBloc, PoidsState>(
          listener: (context, state) => state.maybeMap(
            sendPoidsLoading: (value) => showLoaderOverlay(context),
            sendPoidsLoaded: (value) {
              hideLoaderOverlay();
              successToast('Mesure enregistré !');
              return null;
            },
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
