import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/providers.dart';

class ActivityWidget extends ConsumerWidget {
  final TypeActivity typeActivity;

  const ActivityWidget({
    Key? key,
    required this.typeActivity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(configProvider);
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "${config.imageUrl}${typeActivity.imagePath}",
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
