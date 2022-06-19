import 'package:flutter/material.dart';

class Menu {
  final int id;
  final String titre;
  final IconData icon;
  final Color couleur;
  final String description;
  final Widget redirection;

  Menu({
    required this.id,
    required this.titre,
    required this.icon,
    required this.couleur,
    required this.description,
    required this.redirection,
  });
}
