import 'package:flutter/material.dart';

class Menu {
  final int id;
  final String title;
  final IconData icon;
  final Color color;
  final String description;
  final Widget child;

  Menu({
    required this.id,
    required this.title,
    required this.icon,
    required this.color,
    required this.description,
    required this.child,
  });
}
