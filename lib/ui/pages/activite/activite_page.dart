import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/backend.dart';
import 'package:max_sports/data/blocs/activite_bloc.dart';
import 'package:max_sports/data/blocs/type_activite_bloc.dart';
import 'package:max_sports/data/entities/type_activite.dart';
import 'package:max_sports/data/states/type_activite_state.dart';
import 'package:max_sports/ui/pages/activite/activite_page_provider.dart';
import 'package:max_sports/ui/pages/activite/widgets/buttons_time.dart';

class ActivitePage extends StatefulWidget {
  const ActivitePage({Key? key}) : super(key: key);

  @override
  State<ActivitePage> createState() => _ActivitePageState();
}

class _ActivitePageState extends State<ActivitePage> {
  @override
  Widget build(BuildContext context) {
    return ActivitePageProvider(
      child: SafeArea(
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
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Row(
              children: generateRadioList(list, defaultType, bloc),
            ),
          ),
        ),
        ButtonsTime(
          onButtonSelected: () {},
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Temps personnalisé : '),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 10,
                  child: Column(
                    children: [
                      Image.network(
                        "${BackEnd().imageUrl}${type.imagePath}",
                        width: 200,
                        height: 200,
                      ),
                      Text(type.type)
                    ],
                  ),
                ),
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
