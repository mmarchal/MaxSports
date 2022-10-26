import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/core/utils/dialog.dart';
import 'package:max_sports/data/blocs/activity_bloc.dart';
import 'package:max_sports/data/blocs/type_activity_bloc.dart';
import 'package:max_sports/data/entities/activity.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/type_activity.dart';
import 'package:max_sports/data/states/activity_state.dart';
import 'package:max_sports/data/states/type_activity_state.dart';
import 'package:max_sports/ui/pages/activity/activity_page_listener.dart';
import 'package:max_sports/ui/pages/activity/activity_page_provider.dart';
import 'package:max_sports/ui/pages/activity/widgets/buttons_time.dart';
import 'package:max_sports/ui/pages/activity/widgets/distance_widget.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return ActivityPageProvider(
      child: ActivityPageListener(
        child: Center(
          child: BlocBuilder<TypeActivityBloc, TypeActivityState>(
            buildWhen: (previous, current) =>
                current is TypeActivityStateGetDatasLoaded,
            builder: (context, state) {
              if (state.currentListOfActivitesTypes != null) {
                return bodyWidget(context, state.currentListOfActivitesTypes!);
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget bodyWidget(BuildContext buildContext, List<TypeActivity> list) {
    final bloc = buildContext.read<ActivityBloc>();
    TypeActivity? defaultType = bloc.state.currentSelectedType;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          child: Row(
            children: generateRadioList(list, defaultType, bloc),
          ),
        ),
        const DistanceWidget(),
        ButtonsTime(
          onButtonSelected: (int value) => bloc.selectTime(
            value,
          ),
        ),
        BlocBuilder<ActivityBloc, ActivityState>(
          builder: (context, state) {
            if (state.currentTime != null && state.currentTime == 0) {
              return SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Temps personnalisé : '),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (String? s) =>
                            context.read<ActivityBloc>().selectTime(
                                  int.tryParse(s!) ?? 0,
                                ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        BlocBuilder<ActivityBloc, ActivityState>(
          builder: (context, state) {
            int? timeSelected = state.currentTime;
            double? distanceSelected = state.currentDistance;
            if (timeSelected != null && distanceSelected != null) {
              return Container(
                margin: const EdgeInsets.all(16),
                child: Text(
                    'Activite : $distanceSelected km en $timeSelected min'),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
        ElevatedButton.icon(
          onPressed: () {
            TypeActivity? type = bloc.state.currentSelectedType;
            int? time = bloc.state.currentTime;
            double? distance = bloc.state.currentDistance;
            if (type != null && time != null && distance != null) {
              Activity activite = Activity(
                distance: distance,
                duration: time.toDouble(),
                date: DateTime.now(),
                typeActivity: bloc.state.currentSelectedType!,
              );
              bloc.sendActivity(activite);
            } else {
              defaultErrorDialog(
                context: context,
                error: const APIError(
                  systemMessage: '',
                  title: 'Erreur',
                  content:
                      'Le type, le temps d\'exercice et la distance doivent être renseigné !',
                ),
              );
            }
          },
          icon: const Icon(Icons.verified),
          label: const Text("Valider l'activité"),
        )
      ],
    );
  }

  List<Widget> generateRadioList(
      List<TypeActivity> list, TypeActivity? defaultType, ActivityBloc bloc) {
    List<Widget> _list = [];
    for (TypeActivity type in list) {
      _list.add(
        Expanded(
          child: InkWell(
            onTap: () => setState(() {
              bloc.selectActivity(type);
            }),
            child: Column(
              children: [
                Card(
                  semanticContainer: true,
                  color: Colors.transparent,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10.0)),
                    child: Image.network(
                      "${context.read<ConfigService>().imageUrl}${type.imagePath}",
                      fit: BoxFit.fill,
                    ),
                  ),
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                ),
                Text(type.type),
                Radio(
                  value: type,
                  groupValue: defaultType,
                  onChanged: (TypeActivity? type) {},
                )
              ],
            ),
          ),
        ),
      );
    }
    return _list;
  }
}
