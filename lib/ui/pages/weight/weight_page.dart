import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:max_design/widgets/button/design_button.dart';
import 'package:max_design/widgets/input/design_text_field.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/entities/weight.dart';

class WeightPage extends ConsumerStatefulWidget {
  const WeightPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return WeightPageState();
  }
}

class WeightPageState extends ConsumerState<WeightPage> {
  DateTime selectedDate = DateTime.now();

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        rowInit(
          text: "Date de la mesure : ",
          child: DesignButton.elevated(
            icon: const Icon(Icons.schedule),
            onPressed: () async {
              final DateTime? selected = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
              );
              if (selected != null && selected != selectedDate) {
                setState(() {
                  selectedDate = selected;
                });
              }
            },
            text: DateFormat("dd/MM/yyyy").format(selectedDate),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        rowInit(
          text: "Poids mesuré : ",
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: DesignTextField(
              keyboardType: TextInputType.number,
              controller: controller,
              labelText: "Poids",
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        DesignButton.elevated(
          onPressed: () {
            Weight weight = Weight(
              date: selectedDate,
              poids: double.tryParse(
                    controller.text.replaceAll(',', '.'),
                  ) ??
                  0.0,
            );
            //ref.read(weightProvider.notifier).postWeight(weight);
          },
          icon: const Icon(
            Icons.analytics,
          ),
          text: "Valider",
        ),
      ],
    );
  }

  Widget rowInit({
    required String text,
    required Widget child,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DesignText(text: text),
        child,
      ],
    );
  }
}
