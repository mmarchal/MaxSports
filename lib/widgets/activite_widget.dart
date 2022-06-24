import 'package:flutter/material.dart';
import 'package:max_sports/back-end/backend.dart';
import 'package:max_sports/objects/type_activite.dart';

class ActiviteWidget extends StatelessWidget {
  final TypeActivite typeActivite;

  const ActiviteWidget({
    Key? key,
    required this.typeActivite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage:
                NetworkImage("${BackEnd().imageUrl}/${typeActivite.imagePath}"),
          ),
          Text("Vous avez fais : ${typeActivite.type}"),
        ],
      ),
    );
  }
}
