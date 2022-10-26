import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/entities/recap.dart';

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
            const DesignText(
              text: "Les 2 dernières mesures",
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DesignText(
                  text: "Poids : ${recap!.poidsRecent} kg",
                ),
                DesignText(
                  text: "Date : ${DateFormat("dd/MM/yyyy").format(recap!.dateRecent)}",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DesignText(
                  text: "Poids : ${recap!.poidsLate} kg",
                ),
                DesignText(
                  text: "Date : ${DateFormat("dd/MM/yyyy").format(recap!.dateLate)}",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            DesignText(
              text: "Etat : ${recap!.etat.name} de ${recap!.difference} kg",
            ),
          ],
        ),
      );
    }
  }
}
