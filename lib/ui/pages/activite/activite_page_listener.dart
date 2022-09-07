import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/dialog.dart';
import 'package:max_sports/data/blocs/activite_bloc.dart';
import 'package:max_sports/data/states/activite_state.dart';
import 'package:max_sports/ui/widgets/app_loader.dart';

class ActivitePageListener extends StatelessWidget {
  final Widget child;

  const ActivitePageListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ActiviteBloc, ActiviteState>(
      listener: (context, state) => state.maybeMap(
        postActiviteLoading: (value) => showLoaderOverlay(context),
        postActiviteLoaded: (value) {
          hideLoaderOverlay();
          successToast('Activité enregistré !');
          return null;
        },
        failed: (value) {
          hideLoaderOverlay();
          defaultErrorDialog(context: context, error: value.error);
          return null;
        },
        orElse: () => null,
      ),
      child: child,
    );
  }
}
