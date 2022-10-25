import 'package:flutter/material.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/entities/api_error.dart';

class FailedWidget extends StatelessWidget {
  final APIError? error;

  const FailedWidget({
    Key? key,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DesignText(
            text: error?.title ?? 'Erreur',
          ),
          DesignText(
            text: error?.content ?? 'Une erreur est survenue',
          )
        ],
      ),
    );
  }
}
