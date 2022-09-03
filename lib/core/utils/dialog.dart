import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

void errorDialog({
  required BuildContext context,
  required String title,
  required String message,
}) =>
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Container(
          //color: Colors.red,
          child: ClassicGeneralDialogWidget(
            titleText: title,
            contentText: message,
            positiveText: 'OK',
            onPositiveClick: () => Navigator.of(context).pop(),
          ),
        );
      },
      animationType: DialogTransitionType.slideFromTop,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(seconds: 1),
    );
