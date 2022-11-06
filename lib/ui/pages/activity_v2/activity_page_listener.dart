import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/dialog.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/states/activity_state.dart';
import 'package:max_sports/ui/widgets/app_loader.dart';

class ActivityPageListener extends StatelessWidget {
  final Widget child;

  const ActivityPageListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ActivityBloc, ActivityState>(
      listener: (context, state) => state.maybeMap(
        postActivityLoading: (value) => showLoaderOverlay(context),
        postActivityLoaded: (value) {
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
