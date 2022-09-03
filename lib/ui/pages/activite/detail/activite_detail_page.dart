import 'package:flutter/material.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/ui/widgets/activite_widget.dart';

class ActiviteDetailPage extends StatelessWidget {
  final Activite activite;

  const ActiviteDetailPage({
    Key? key,
    required this.activite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ActiviteWidget(typeActivite: activite.typeActivite),
            ],
          ),
        ),
      ),
    );
  }
}
