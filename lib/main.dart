import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:max_sports/activite_page.dart';
import 'package:max_sports/back-end/backend.dart';
import 'package:max_sports/objects/menu.dart';
import 'package:max_sports/poids_page.dart';
import 'package:max_sports/stats_page.dart';
import 'package:max_sports/utils/custom_shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('fr', null);
    return MaterialApp(
      title: 'Max Sports',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Max Sports'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Menu> tables = [
    Menu(
      titre: "Poids",
      icon: Icons.analytics,
      couleur: Colors.green,
      description: "Permet d'ajouter une mesure de poids !",
      redirection: const PoidsPage(),
    ),
    Menu(
      titre: "Activité",
      icon: Icons.fitness_center,
      couleur: Colors.lightBlue,
      description: "Permet d'ajouter une activité !",
      redirection: const ActivitePage(),
    ),
    Menu(
      titre: "Statistiques",
      icon: Icons.query_stats,
      couleur: Colors.red.shade300,
      description: "Permet de consulter les statistiques !",
      redirection: const StatsPage(),
    ),
  ];

  @override
  void initState() {
    super.initState();
    getAllTypesAndSave();
  }

  getAllTypesAndSave() {
    BackEnd().getTypesActivites().then((value) {
      if (value.isSuccess && value.data != null) {
        List<String> convertList =
            value.data!.map((e) => jsonEncode(e)).toList();
        CustomShared.setList("typesActivites", convertList);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                CustomShared.clear();
                Fluttertoast.showToast(
                  msg: "Vos données ont été supprimées !",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              }),
          IconButton(
            onPressed: () {
              getAllTypesAndSave();
              Fluttertoast.showToast(
                msg: "Vos données ont été récupérées !",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: (2 / 1),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          padding: const EdgeInsets.all(10.0),
          children: tables
              .map(
                (data) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext bC) => data.redirection,
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: data.couleur,
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            data.icon,
                            size: 25,
                            color: Colors.black,
                          ),
                          ListTile(
                            title: Text(
                              data.titre,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              data.description,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class RandomColorModel {
  Random random = Random();

  Color getColor() {
    return Color.fromARGB(random.nextInt(300), random.nextInt(300),
        random.nextInt(300), random.nextInt(300));
  }
}
