import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/activite_bloc.dart';

class ButtonsTime extends StatefulWidget {
  final Function(int value) onButtonSelected;

  const ButtonsTime({
    Key? key,
    required this.onButtonSelected,
  }) : super(key: key);

  @override
  State<ButtonsTime> createState() => _ButtonsTimeState();
}

class _ButtonsTimeState extends State<ButtonsTime> {
  final Map<String, int> timeValue = {
    '10': 10,
    '15': 15,
    '20': 20,
    '25': 25,
    '30': 30,
    '45': 45,
    '60': 60,
    '90': 90,
    'Personnalisé': 0
  };

  @override
  Widget build(BuildContext context) {
    final currentTime = context.read<ActiviteBloc>().state.currentTime;
    return Container(
      margin: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: timeValue.keys.map(
            (e) {
              return Container(
                margin: const EdgeInsets.only(right: 8, left: 8),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        (currentTime != null && currentTime == timeValue[e])
                            ? MaterialStateProperty.all(Colors.green)
                            : MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    widget.onButtonSelected(
                      timeValue[e]!,
                    );
                  },
                  child: Text(
                    e,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
