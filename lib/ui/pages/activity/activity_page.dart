import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_sports/ui/pages/activity/widgets/activity_resume.dart';
import 'package:max_sports/ui/pages/activity/widgets/activity_selection.dart';

class ActivityPage extends ConsumerWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ActivityResume(),
          ActivitySelection(),
        ],
      ),
    );
  }
}
