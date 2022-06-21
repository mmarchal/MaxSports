import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:max_sports/back-end/backend.dart';
import 'package:max_sports/objects/poids.dart';

class PoidsPage extends StatefulWidget {
  const PoidsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PoidsPageState();
  }
}

class PoidsPageState extends State<PoidsPage> {
  bool date = false;
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
    return Column(
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
                  date = true;
                  selectedDate = selected;
                });
              }
            },
            icon: const Icon(Icons.schedule),
            label: Text((date)
                ? DateFormat("dd/MM/yyyy").format(selectedDate)
                : "Non défini"),
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
          onPressed: () => checkAndValidate(),
          icon: const Icon(
            Icons.analytics,
          ),
          label: const Text("Valider"),
        ),
      ],
    );
  }

  showError(String message) {
    showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          scrollable: true,
          title: const Text(
            "Erreur",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          content: Center(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.red,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          actions: [
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  checkAndValidate() async {
    if (date && (controller.text != '' || controller.text.isNotEmpty)) {
      showDialog(
        context: context,
        builder: (BuildContext bContext) => const Center(
          child: CircularProgressIndicator(),
        ),
      );
      final retourInsert = await BackEnd().newPoids(
        Poids(
          date: selectedDate,
          poids: double.parse(controller.text),
        ),
      );
      Navigator.pop(context);
      if (retourInsert.isSuccess) {
        Navigator.pop(context);
        Fluttertoast.showToast(
          msg: "Mesure enregistré !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
        showError(retourInsert.error?.systemMessage ?? "Erreur inconnue");
      }
    } else {
      showError("La date et le poids doivent être renseigné !");
    }
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
