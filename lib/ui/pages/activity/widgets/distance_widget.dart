import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_design/widgets/input/design_text_field.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';

enum DistanceUnit { metre, kilometre }

class DistanceWidget extends StatelessWidget {
  const DistanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          width: 150,
          child: DesignTextField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            /*style: const TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              focusColor: Colors.white,
              //add prefix icon
              prefixIcon: const Icon(
                Icons.directions_run,
                color: Colors.grey,
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,

              //create lable
              labelText: 'Distance',
              //lable style
              labelStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),*/
            onChanged: (String? s) =>
                context.read<ActivityBloc>().selectDistance(
                      double.tryParse(s!) ?? 0,
                    ),
          ),
        ),
        const DesignText(
          text: 'kilomètres',
        ),
      ],
    );
  }
}
