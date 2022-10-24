import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/data/entities/type_activity.dart';

class ActivityWidget extends StatelessWidget {
  final TypeActivity typeActivite;

  const ActivityWidget({
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
            backgroundImage: NetworkImage(
              "${context.read<ConfigService>().imageUrl}${typeActivite.imagePath}",
            ),
          ),
          Text("Vous avez fais : ${typeActivite.type}"),
        ],
      ),
    );
  }
}
