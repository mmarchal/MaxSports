import 'package:flutter/material.dart';
import 'package:max_sports/data/entities/menu.dart';
import 'package:max_sports/ui/pages/activite/activite_page.dart';
import 'package:max_sports/ui/pages/poids/poids_page.dart';
import 'package:max_sports/ui/pages/statistique/stats_page.dart';
import 'package:max_sports/ui/pages/summary/summary_page.dart';

var summaryMenu = Menu(
  id: 1,
  title: "Accueil",
  icon: Icons.home,
  color: Colors.purple,
  description: "",
  child: const SummaryPage(),
);
var poidsMenu = Menu(
  id: 2,
  title: "Poids",
  icon: Icons.analytics,
  color: Colors.green,
  description: "Permet d'ajouter une mesure de poids !",
  child: const PoidsPage(),
);
var activiteMenu = Menu(
  id: 3,
  title: "Activité",
  icon: Icons.fitness_center,
  color: Colors.lightBlue,
  description: "Permet d'ajouter une activité !",
  child: const ActivitePage(),
);
var statsMenu = Menu(
  id: 4,
  title: "Statistiques",
  icon: Icons.query_stats,
  color: Colors.red.shade300,
  description: "Permet de consulter les statistiques !",
  child: const StatsPage(),
);

final items = [
  NavigationBarItem(
    id: summaryMenu.id,
    title: summaryMenu.title,
    icon: summaryMenu.icon,
    redirection: summaryMenu.child,
    color: summaryMenu.color,
  ),
  NavigationBarItem(
    id: poidsMenu.id,
    title: poidsMenu.title,
    icon: poidsMenu.icon,
    redirection: poidsMenu.child,
    color: poidsMenu.color,
  ),
  NavigationBarItem(
    id: activiteMenu.id,
    title: activiteMenu.title,
    icon: activiteMenu.icon,
    redirection: activiteMenu.child,
    color: activiteMenu.color,
  ),
  NavigationBarItem(
    id: statsMenu.id,
    title: statsMenu.title,
    icon: statsMenu.icon,
    redirection: statsMenu.child,
    color: statsMenu.color,
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
