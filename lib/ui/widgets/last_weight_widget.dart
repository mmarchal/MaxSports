import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/entities/weight.dart';

class LastWeightWidget extends StatelessWidget {
  final Weight? poids;

  const LastWeightWidget({
    Key? key,
    this.poids,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Generate a card with the last weight and the date of the last weight
    return Card(
      elevation: 10,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: const EdgeInsets.all(16),
        child: (poids != null)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const DesignText(
                    text: "Dernière prise de poids",
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DesignText(
                    text:
                        "Date : ${DateFormat("dd/MM/yyyy").format(poids!.date)}",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DesignText(
                    text: "Poids : ${poids!.poids} kg",
                  ),
                ],
              )
            : const Center(
                child: DesignText(
                  text: "Aucun poids enregistré",
                ),
              ),
      ),
    );
  }
}
