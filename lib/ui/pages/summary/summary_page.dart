import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/entities/recap.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/data/error_type.dart';
import 'package:max_sports/providers.dart';
import 'package:max_sports/ui/widgets/failed_widget.dart';
import 'package:max_sports/ui/widgets/last_weight_widget.dart';
import 'package:max_sports/ui/widgets/recap_widget.dart';

class SummaryPage extends ConsumerWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Weight?> lastWeight = ref.watch(lastWeightData);
    AsyncValue<Recap?> resume = ref.watch(resumeData);
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
          lastWeight.when(
            data: (weight) => LastWeightWidget(
              poids: weight,
            ),
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => FailedWidget(
              error: genericError(
                title: error.toString(),
                content: stack.toString(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          resume.when(
            data: (data) => RecapWidget(
              recap: resume.value,
            ),
            error: (error, stack) => FailedWidget(
              error: genericError(
                title: error.toString(),
                content: stack.toString(),
              ),
            ),
            loading: () => const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
