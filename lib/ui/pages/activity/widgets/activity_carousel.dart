import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:max_design/widgets/text/design_text.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/providers.dart';

class ActivityCarousel extends ConsumerWidget {
  final List<TypeActivity> activites;

  const ActivityCarousel({
    Key? key,
    required this.activites,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (activites.isNotEmpty) {
      context.read<ActivityBloc>().selectActivity(activites.first);
    }
    return SizedBox(
      width: 200,
      height: 250,
      child: PageView.builder(
        itemCount: activites.length,
        pageSnapping: true,
        onPageChanged: (int index) =>
            context.read<ActivityBloc>().selectActivity(activites[index]),
        itemBuilder: (context, pagePosition) {
          TypeActivity type = activites[pagePosition];
          return Column(
            children: [
              Image.network(
                "${ref.watch(configProvider).imageUrl}${type.imagePath}",
                fit: BoxFit.fill,
                loadingBuilder: (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
              ),
              DesignText(
                text: type.type,
                fontStyle: FontStyle.italic,
              ),
            ],
          );
        },
      ),
    );
  }
}
