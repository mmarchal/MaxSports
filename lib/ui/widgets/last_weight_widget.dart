import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:max_sports/data/entities/poids.dart';

class LastWeightWidget extends StatelessWidget {
  final Poids? poids;

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
                  const Text(
                    "Dernière prise de poids",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date : ${DateFormat("dd/MM/yyyy").format(poids!.date)}",
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Poids : ${poids!.poids} kg",
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            : const Center(
                child: Text(
                  "Aucun poids enregistré",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
