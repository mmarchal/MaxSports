import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:max_sports/objects/activite.dart';
import 'package:max_sports/objects/menu.dart';
import 'package:max_sports/objects/poids.dart';
import 'package:max_sports/poids_page.dart';
import 'package:max_sports/stats_page.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  Database? _database;

  List<Menu> tables = [
    Menu(
      titre: "Poids",
      icon: Icons.analytics,
      couleur: Colors.green,
      description: "Permet d'ajouter une mesure de poids !",
      redirection: const PoidsPage(),
    ),
    /*Menu(
      titre: "Activité",
      icon: Icons.fitness_center,
      couleur: Colors.lightBlue,
      description: "Permet d'ajouter une activité !",
      redirection: const ActivitePage(),
    ),*/
    Menu(
      titre: "Statistiques",
      icon: Icons.query_stats,
      couleur: Colors.red.shade300,
      description: "Permet de consulter les statistiques !",
      redirection: const StatsPage(),
    ),
  ];

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "Database.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Poids ("
          "id INTEGER PRIMARY KEY,"
          "datePrise TEXT,"
          "mesure DOUBLE"
          ")");
      await db.execute("CREATE TABLE Activite ("
          "id INTEGER PRIMARY KEY,"
          "date DATETIME,"
          "machine TEXT,"
          "repetition INTEGER,"
          "poidsSouleve DOUBLE,"
          "kilometre DOUBLE,"
          "duree DOUBLE"
          ")");
    });
  }

  fakeData() async {
    final Database db = await database;
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-01-01 12:00:00', 71.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-01-02 12:00:00', 72.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-01-03 15:00:00', 63.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-01-05 14:00:00', 84.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-01-07 09:00:00', 80.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-01-10 18:00:00', 76.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-02-11 12:00:00', 70.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-03-11 12:00:00', 70.0)");
    await db.execute(
        "INSERT INTO Poids (datePrise, mesure) VALUES ('2022-03-16 12:00:00', 70.0)");
  }

  newPoids(Poids newPoids) async {
    final db = await database;
    var table = await db.rawQuery("SELECT MAX(id)+1 as id FROM Poids");
    Object id = table.first["id"] ?? 0;
    var raw = await db.rawInsert(
        "INSERT Into Poids (id,datePrise,mesure)"
        " VALUES (?,?,?,?)",
        [
          id,
          newPoids.datePrise,
          newPoids.mesure,
        ]);
    return raw;
  }

  newActivite(Activite newActivite) async {
    final db = await database;
    //get the biggest id in the table
    var table = await db.rawQuery("SELECT MAX(id)+1 as id FROM Activite");
    Object id = table.first["id"] ?? 0;
    var raw = await db.rawInsert(
        "INSERT Into Activite (id,date,machine,repetition,poidsSouleve,kilometre,duree)"
        " VALUES (?,?,?,?)",
        [
          id,
          newActivite.date,
          newActivite.machine,
          newActivite.repetition,
          newActivite.poidsSouleve,
          newActivite.kilometre,
          newActivite.duree,
        ]);
    return raw;
  }

  getData(String table, int id) async {
    final db = await database;
    var res = await db.query(table, where: "id = ?", whereArgs: [id]);
    if (table == "Poids") {
      return res.isNotEmpty ? Poids.fromJson(res.first) : null;
    } else {
      return res.isNotEmpty ? Activite.fromJson(res.first) : null;
    }
  }

  getLastData(String table) async {
    final db = await database;
    var res = await db.query(table, orderBy: "id DESC", limit: 1);
    if (table == "Poids") {
      return res.isNotEmpty ? Poids.fromJson(res.first) : null;
    } else {
      return res.isNotEmpty ? Activite.fromJson(res.first) : null;
    }
  }

  Future<List<dynamic>> getAllDatas(String table) async {
    final db = await database;
    var res = await db.query(table);
    List list = [];
    if (table == "Poids") {
      list = res.isNotEmpty ? res.map((c) => Poids.fromJson(c)).toList() : [];
    } else {
      list =
          res.isNotEmpty ? res.map((c) => Activite.fromJson(c)).toList() : [];
    }
    return list;
  }

  deleteData(String table, int id) async {
    final db = await database;
    return db.delete(table, where: "id = ?", whereArgs: [id]);
  }

  deleteAllData(String table) async {
    final db = await database;
    return db.delete(table);
  }
}
