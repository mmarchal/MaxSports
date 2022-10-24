import 'package:flutter/material.dart';
import 'package:max_sports/data/entities/menu.dart';
import 'package:max_sports/ui/pages/activity/activity_page.dart';
import 'package:max_sports/ui/pages/statistique/stats_page.dart';
import 'package:max_sports/ui/pages/summary/summary_page.dart';
import 'package:max_sports/ui/pages/weight/weight_page.dart';

var summaryMenu = Menu(
  id: 1,
  title: "Accueil",
  icon: Icons.home,
  color: Colors.purple,
  description: "",
  child: const SummaryPage(),
);
var weightMenu = Menu(
  id: 2,
  title: "Poids",
  icon: Icons.analytics,
  color: Colors.green,
  description: "Permet d'ajouter une mesure de poids !",
  child: const WeightPage(),
);
var activityMenu = Menu(
  id: 3,
  title: "Activité",
  icon: Icons.fitness_center,
  color: Colors.lightBlue,
  description: "Permet d'ajouter une activité !",
  child: const ActivityPage(),
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
    id: weightMenu.id,
    title: weightMenu.title,
    icon: weightMenu.icon,
    redirection: weightMenu.child,
    color: weightMenu.color,
  ),
  NavigationBarItem(
    id: activityMenu.id,
    title: activityMenu.title,
    icon: activityMenu.icon,
    redirection: activityMenu.child,
    color: activityMenu.color,
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
