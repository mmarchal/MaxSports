import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:max_sports/data/blocs/poids_bloc.dart';
import 'package:max_sports/data/entities/poids.dart';
import 'package:max_sports/ui/pages/poids/poids_page_listener.dart';

class PoidsPage extends StatefulWidget {
  const PoidsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PoidsPageState();
  }
}

class PoidsPageState extends State<PoidsPage> {
  DateTime selectedDate = DateTime.now();

  Color couleur = Colors.green;

  final TextEditingController controller = TextEditingController();

  OutlineInputBorder myinputborder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        width: 1.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PoidsPageListener(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          rowInit(
            text: "Date de la mesure : ",
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: couleur,
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
              label: Text(
                DateFormat("dd/MM/yyyy").format(selectedDate),
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
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: "Poids",
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: couleur,
            ),
            onPressed: () => context.read<PoidsBloc>().sendPoids(
                  Poids(
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
            label: const Text("Valider"),
          ),
        ],
      ),
    );
  }

  Widget rowInit({required String text, required Widget child}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        child,
      ],
    );
  }
}
