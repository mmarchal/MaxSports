import 'package:flutter/material.dart';
import 'package:max_sports/back-end/api_response.dart';
import 'package:max_sports/back-end/backend.dart';
import 'package:max_sports/objects/poids.dart';
import 'package:max_sports/objects/recap.dart';
import 'package:max_sports/widgets/last_weight_widget.dart';
import 'package:max_sports/widgets/recap_widget.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({Key? key}) : super(key: key);

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  APIResponse<Poids?>? lastWeight;
  APIResponse<Recap?>? recap;

  @override
  void initState() {
    super.initState();
    BackEnd().getLastWeight().then((value) {
      setState(() {
        lastWeight = value;
      });
    });
    BackEnd().getLastTwoWeights().then((value) {
      setState(() {
        recap = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Bienvenue sur Max Sports",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Max Sports est un application qui permet de suivre vos performances sportives.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        if (lastWeight != null)
          LastWeightWidget(
            poids: lastWeight!.data,
          )
        else
          const Center(
            child: CircularProgressIndicator(),
          ),
        const SizedBox(
          height: 20,
        ),
        if (recap != null)
          RecapWidget(
            recap: recap!.data,
          )
        else
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
