import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class ActivitePage extends StatefulWidget {
  const ActivitePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ActivitePageState();
  }
}

class ActivitePageState extends State<ActivitePage> {
  final TextEditingController kilometreController = TextEditingController();
  final TextEditingController dureeController = TextEditingController();

  final List<String> activits = [
    "Musculation",
    "Tapis de course",
    "Vélo elliptique",
  ];

  String vitesseMoyenne = "";
  Widget? formulaire;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GroupButton(
            isRadio: true,
            onSelected: (String s, int i, bool b) {
              setState(() {
                formulaire = donneesActivite(i);
              });
            },
            buttons: activits,
          ),
          formulaire ?? const SizedBox()
        ],
      ),
    );
  }

  Widget donneesActivite(int i) {
    switch (i) {
      case 0:
        return const Center();
      case 1:
      case 2:
        return Center(
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                rowInit(
                  text: "Kilomètre : ",
                  child: Expanded(
                    child: TextField(
                      controller: kilometreController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                rowInit(
                  text: "Temps d'exercice : ",
                  child: Expanded(
                    child: TextField(
                      controller: dureeController,
                      keyboardType: TextInputType.number,
                      onSubmitted: (String s) => setState(() {
                        vitesseMoyenne = _calculVitesseMoyenne();
                      }),
                    ),
                  ),
                ),
                rowInit(
                  text: "Vitesse moyenne :",
                  child: Text(
                    vitesseMoyenne,
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return const Center(
          child: Text("Choisissez une activité"),
        );
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

  String _calculVitesseMoyenne() {
    double duree = (double.parse(dureeController.text)) / 60;
    double kilometre = double.parse(kilometreController.text);
    return (kilometre / duree).toString();
  }
}
