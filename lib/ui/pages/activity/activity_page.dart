import 'package:flutter/material.dart';
import 'package:max_sports/ui/pages/activity/activity_page_listener.dart';
import 'package:max_sports/ui/pages/activity/activity_page_provider.dart';
import 'package:max_sports/ui/pages/activity/widgets/activity_resume.dart';
import 'package:max_sports/ui/pages/activity/widgets/activity_selection.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActivityPageProvider(
      child: ActivityPageListener(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ActivityResume(),
              ActivitySelection(),
            ],
          ),
        ),
      ),
    );
  }
}
