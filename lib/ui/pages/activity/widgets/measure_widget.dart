import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_design/widgets/input/design_text_field.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';

enum DistanceUnit { metre, kilometre }

class MeasureWidget extends StatelessWidget {
  MeasureWidget({Key? key}) : super(key: key);

  final distanceController = TextEditingController();
  final timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DesignText(
              text: 'Distance : ',
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: 150,
              child: DesignTextField(
                controller: distanceController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onChanged: (String? s) =>
                    context.read<ActivityBloc>().selectDistance(
                          double.tryParse(s!) ?? 0,
                        ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DesignText(
              text: 'Temps :',
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: 150,
              child: DesignTextField(
                controller: timeController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                onChanged: (String? s) =>
                    context.read<ActivityBloc>().selectTime(
                          int.tryParse(s!) ?? 0,
                        ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
