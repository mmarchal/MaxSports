import 'package:flutter/material.dart';
import 'package:max_sports/data/entities/menu.dart';
import 'package:max_sports/ui/pages/accueil/accueil_page.dart';
import 'package:max_sports/ui/pages/activite_page.dart';
import 'package:max_sports/ui/pages/poids/poids_page.dart';
import 'package:max_sports/ui/pages/stats_page.dart';

var homeMenu = Menu(
  id: 1,
  titre: "Accueil",
  icon: Icons.home,
  couleur: Colors.purple,
  description: "",
  redirection: const AccueilPage(),
);
var poidsMenu = Menu(
  id: 2,
  titre: "Poids",
  icon: Icons.analytics,
  couleur: Colors.green,
  description: "Permet d'ajouter une mesure de poids !",
  redirection: const PoidsPage(),
);
var activiteMenu = Menu(
  id: 3,
  titre: "Activité",
  icon: Icons.fitness_center,
  couleur: Colors.lightBlue,
  description: "Permet d'ajouter une activité !",
  redirection: const ActivitePage(),
);
var statsMenu = Menu(
  id: 4,
  titre: "Statistiques",
  icon: Icons.query_stats,
  couleur: Colors.red.shade300,
  description: "Permet de consulter les statistiques !",
  redirection: const StatsPage(),
);

final items = [
  NavigationBarItem(
    id: homeMenu.id,
    title: homeMenu.titre,
    icon: homeMenu.icon,
    redirection: homeMenu.redirection,
    color: homeMenu.couleur,
  ),
  NavigationBarItem(
    id: poidsMenu.id,
    title: poidsMenu.titre,
    icon: poidsMenu.icon,
    redirection: poidsMenu.redirection,
    color: poidsMenu.couleur,
  ),
  NavigationBarItem(
    id: activiteMenu.id,
    title: activiteMenu.titre,
    icon: activiteMenu.icon,
    redirection: activiteMenu.redirection,
    color: activiteMenu.couleur,
  ),
  NavigationBarItem(
    id: statsMenu.id,
    title: statsMenu.titre,
    icon: statsMenu.icon,
    redirection: statsMenu.redirection,
    color: statsMenu.couleur,
  ),
];

class NavigationBarItem {
  final int id;
  final String title;
  final IconData icon;
  final Widget redirection;
  final Color color;

  NavigationBarItem({
    required this.id,
    required this.title,
    required this.icon,
    required this.redirection,
    required this.color,
  });
}
