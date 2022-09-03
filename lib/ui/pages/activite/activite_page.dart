import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/blocs/type_activite_bloc.dart';
import 'package:max_sports/data/entities/type_activite.dart';
import 'package:max_sports/data/states/type_activite_state.dart';
import 'package:max_sports/ui/pages/activite/activite_page_provider.dart';

class ActivitePage extends StatelessWidget {
  const ActivitePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ActivitePageProvider(
      child: SafeArea(
        child: Center(
          child: BlocBuilder<TypeActiviteBloc, TypeActiviteState>(
              builder: (context, state) {
            if (state.currentListOfActivitesTypes != null) {
              return bodyWidget(state.currentListOfActivitesTypes!);
            } else {
              return const CircularProgressIndicator();
            }
          }),
        ),
      ),
    );
  }

  Widget bodyWidget(List<TypeActivite> list) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Choisissez le nombre d'activité effectué ce jour : ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: List.generate(3, (index) {
            index++;
            return Expanded(
              child: ListTile(
                title: Text(index.toString()),
                /*leading: Radio(
                  value: index,
                  groupValue: selectedValue,
                  onChanged: (int? changed) {},
                ),*/
              ),
            );
          }),
        ),
        /*(selectedValue != 0)
            ? Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16),
                  child: ListView.builder(
                    itemCount: selectedValue,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            DropdownButton(
                              value: list[index],
                              items: list
                                  .map(
                                    (TypeActivite e) =>
                                        DropdownMenuItem<TypeActivite>(
                                      value: e,
                                      child: Text(e.type),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (TypeActivite? type) {},
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            : const SizedBox(),*/
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.verified),
          label: const Text("Voir résultat"),
        )
      ],
    );
  }
}
