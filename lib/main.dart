import 'dart:math';

import 'package:flutter/material.dart';
import 'package:max_sports/database.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  final db = DBProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: (2 / 1),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          padding: const EdgeInsets.all(10.0),
          children: db.tables
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
