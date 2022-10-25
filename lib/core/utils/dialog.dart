import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:max_sports/data/entities/api_error.dart';

void successToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 3,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    fontSize: 16.0,
    webPosition: "center",
  );
}

void defaultErrorDialog({
  required BuildContext context,
  APIError? error,
}) {
  errorDialog(
    context: context,
    title: error?.title ?? 'Erreur',
    message: error?.content ?? 'Une erreur est survenu !',
  );
}

void errorDialog({
  required BuildContext context,
  required String title,
  required String message,
}) =>
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ClassicGeneralDialogWidget(
          titleText: title,
          contentText: message,
          positiveText: 'OK',
          onPositiveClick: () => Navigator.of(context).pop(),
        );
      },
      animationType: DialogTransitionType.slideFromTop,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: const Duration(seconds: 1),
    );
