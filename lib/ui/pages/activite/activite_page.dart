import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/utils/dialog.dart';
import 'package:max_sports/data/backend.dart';
import 'package:max_sports/data/blocs/activite_bloc.dart';
import 'package:max_sports/data/blocs/type_activite_bloc.dart';
import 'package:max_sports/data/entities/activite.dart';
import 'package:max_sports/data/entities/api_error.dart';
import 'package:max_sports/data/entities/type_activite.dart';
import 'package:max_sports/data/states/activite_state.dart';
import 'package:max_sports/data/states/type_activite_state.dart';
import 'package:max_sports/ui/pages/activite/activite_page_listener.dart';
import 'package:max_sports/ui/pages/activite/activite_page_provider.dart';
import 'package:max_sports/ui/pages/activite/widgets/buttons_time.dart';
import 'package:max_sports/ui/pages/activite/widgets/distance_widget.dart';

class ActivitePage extends StatefulWidget {
  const ActivitePage({Key? key}) : super(key: key);

  @override
  State<ActivitePage> createState() => _ActivitePageState();
}

class _ActivitePageState extends State<ActivitePage> {
  @override
  Widget build(BuildContext context) {
    return ActivitePageProvider(
      child: ActivitePageListener(
        child: Center(
          child: BlocBuilder<TypeActiviteBloc, TypeActiviteState>(
              buildWhen: (previous, current) =>
                  current is TypeActiviteStateGetDatasLoaded,
              builder: (context, state) {
                if (state.currentListOfActivitesTypes != null) {
                  return bodyWidget(
                      context, state.currentListOfActivitesTypes!);
                } else {
                  return const CircularProgressIndicator();
                }
              }),
        ),
      ),
    );
  }

  Widget bodyWidget(BuildContext buildContext, List<TypeActivite> list) {
    final bloc = buildContext.read<ActiviteBloc>();
    TypeActivite? defaultType = bloc.state.currentSelectedType;
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
        BlocBuilder<ActiviteBloc, ActiviteState>(
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
                            context.read<ActiviteBloc>().selectTime(
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
        BlocBuilder<ActiviteBloc, ActiviteState>(
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
            TypeActivite? type = bloc.state.currentSelectedType;
            int? time = bloc.state.currentTime;
            double? distance = bloc.state.currentDistance;
            if (type != null && time != null && distance != null) {
              Activite activite = Activite(
                distance: distance,
                temps: time.toDouble(),
                date: DateTime.now(),
                typeActivite: bloc.state.currentSelectedType!,
              );
              bloc.addActivite(activite);
            } else {
              defaultErrorDialog(
                context: context,
                error: APIError(
                  systemMessage: '',
                  title: 'Erreur',
                  content:
                      'Le type, le temps d\'exercice et la distance doivent être renseigné !',
                ),
              );
            }
          },
          icon: const Icon(Icons.verified),
          label: const Text("Voir résultat"),
        )
      ],
    );
  }

  List<Widget> generateRadioList(
      List<TypeActivite> list, TypeActivite? defaultType, ActiviteBloc bloc) {
    List<Widget> _list = [];
    for (TypeActivite type in list) {
      _list.add(
        Expanded(
          child: InkWell(
            onTap: () => setState(() {
              bloc.selectActivite(type);
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
                      "${BackEnd().imageUrl}${type.imagePath}",
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
                  onChanged: (TypeActivite? type) {},
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
