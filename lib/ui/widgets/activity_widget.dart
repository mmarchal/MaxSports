import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/data/entities/type_activity.dart';

class ActivityWidget extends StatelessWidget {
  final TypeActivity typeActivity;

  const ActivityWidget({
    Key? key,
    required this.typeActivity,
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
              "${context.read<ConfigService>().imageUrl}${typeActivity.imagePath}",
            ),
          ),
          DesignText(
            text: "Vous avez fais : ${typeActivity.type}",
          ),
        ],
      ),
    );
  }
}
