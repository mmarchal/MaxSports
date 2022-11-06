import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:max_design/widgets/input/design_text_field.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/weight_bloc.dart';
import 'package:max_sports/data/entities/weight.dart';
import 'package:max_sports/ui/pages/weight/weight_page_listener.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WeightPageState();
  }
}

class WeightPageState extends State<WeightPage> {
  DateTime selectedDate = DateTime.now();

  Color color = Colors.green;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WeightPageListener(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          rowInit(
            text: "Date de la mesure : ",
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
              ),
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
              icon: const Icon(Icons.schedule),
              label: DesignText(
                text: DateFormat("dd/MM/yyyy").format(selectedDate),
              ),
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
                controller: controller,
                keyboardType: TextInputType.number,
                hintText: "Poids en kg",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
            ),
            onPressed: () => context.read<WeightBloc>().sendWeight(
                  Weight(
                    date: selectedDate,
                    poids: double.tryParse(
                          controller.text.replaceAll(
                            ',',
                            '.',
                          ),
                        ) ??
                        0.0,
                  ),
                ),
            icon: const Icon(
              Icons.analytics,
            ),
            label: const DesignText(text: "Valider"),
          ),
        ],
      ),
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
