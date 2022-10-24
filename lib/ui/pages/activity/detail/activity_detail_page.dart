import 'package:flutter/material.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/ui/widgets/activity_widget.dart';

class ActivityDetailPage extends StatelessWidget {
  final Activity activity;

  const ActivityDetailPage({
    Key? key,
    required this.activity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ActivityWidget(
                typeActivite: activity.typeActivity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
