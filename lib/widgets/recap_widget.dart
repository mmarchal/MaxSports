import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:max_sports/objects/recap.dart';

class RecapWidget extends StatelessWidget {
  final Recap? recap;

  const RecapWidget({
    Key? key,
    this.recap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (recap == null) {
      return const Center(
        child: Text("Aucun récapitulatif"),
      );
    } else {
      return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: const EdgeInsets.all(16),
        color: recap!.etat.color,
        child: Column(
          children: <Widget>[
            const Text(
              "Les 2 dernières mesures",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Poids : ${recap!.poidsRecent} kg",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Date : ${DateFormat("dd/MM/yyyy").format(recap!.dateRecent)}",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Poids : ${recap!.poidsLate} kg",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Date : ${DateFormat("dd/MM/yyyy").format(recap!.dateLate)}",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Etat : ${recap!.etat.name} de ${recap!.difference} kg",
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      );
    }
  }
}
