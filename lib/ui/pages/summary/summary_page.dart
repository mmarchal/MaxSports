import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/providers.dart';
import 'package:max_sports/ui/widgets/last_weight_widget.dart';
import 'package:max_sports/ui/widgets/recap_widget.dart';

class SummaryPage extends ConsumerWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastWeightObject = ref.watch(lastWeight);
    final resumeObject = ref.watch(resumeWeight);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const DesignText(
            text: "Bienvenue sur Max Sports",
          ),
          const SizedBox(
            height: 20,
          ),
          const DesignText(
            text:
                "Max Sports est un application qui permet de suivre vos performances sportives.",
          ),
          const SizedBox(
            height: 20,
          ),
          LastWeightWidget(
            poids: lastWeightObject,
          ),
          const SizedBox(
            height: 20,
          ),
          RecapWidget(
            recap: resumeObject,
          ),
        ],
      ),
    );
  }
}
