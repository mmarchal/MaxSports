import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/core/source/config_service.dart';
import 'package:max_sports/data/entities/type_activity.dart';

class TypeActivityCard extends StatelessWidget {
  final TypeActivity type;
  final VoidCallback onTap;

  const TypeActivityCard({
    Key? key,
    required this.type,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "${context.read<ConfigService>().imageUrl}/${type.imagePath}",
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Align(
          child: Text(
            type.type,
            style: const TextStyle(
              color: Colors.blue,
            ),
          ),
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
