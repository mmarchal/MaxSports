import 'package:flutter/material.dart';

class ButtonsTime extends StatefulWidget {
  final VoidCallback onButtonSelected;

  const ButtonsTime({
    Key? key,
    required this.onButtonSelected,
  }) : super(key: key);

  @override
  State<ButtonsTime> createState() => _ButtonsTimeState();
}

class _ButtonsTimeState extends State<ButtonsTime> {
  final List<int> times = [10, 15, 20, 25, 30, 45, 60, 90];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: times.map(
            (e) {
              return Container(
                margin: const EdgeInsets.only(right: 8, left: 8),
                child: ElevatedButton(
                  onPressed: widget.onButtonSelected,
                  child: Text(
                    e.toString(),
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
