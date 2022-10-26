import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/blocs/type_activity_bloc.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/data/states/type_activity_state.dart';
import 'package:max_sports/ui/pages/activity_v2/widgets/activity_buttons.dart';

class ActivitySelection extends StatelessWidget {
  const ActivitySelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<TypeActivityBloc, TypeActivityState>(
            buildWhen: (previous, current) =>
                current is TypeActivityStateGetDatasLoaded,
            builder: (context, state) {
              if (state.currentListOfActivitesTypes != null) {
                return Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: state.currentListOfActivitesTypes!
                        .map(
                          (e) => _typeActivityWidget(context, e),
                        )
                        .toList(),
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          const ActivityButtons(
            backButton: false,
          ),
        ],
      ),
    );
  }

  Widget _typeActivityWidget(BuildContext context, TypeActivity type) {
    ActivityBloc bloc = context.read<ActivityBloc>();
    return Expanded(
      child: InkWell(
        onTap: () => bloc.selectActivity(type),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10.0)),
                child: Image.network(
                  "${context.read<ConfigService>().imageUrl}${type.imagePath}",
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) =>
                      loadingProgress == null
                          ? child
                          : const Center(
                              child: CircularProgressIndicator(),
                            ),
                ),
              ),
            ),
            Text(type.type),
            Radio(
              value: type,
              groupValue: bloc.state.currentSelectedType,
              onChanged: (_) {},
            )
          ],
        ),
      ),
    );
  }
}
