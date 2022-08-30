import 'package:flutter/material.dart';
import 'package:max_sports/back-end/backend.dart';
import 'package:max_sports/objects/type_activite.dart';

class TypeActiviteCard extends StatelessWidget {
  final TypeActivite type;
  final VoidCallback onTap;

  const TypeActiviteCard({
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
              "${BackEnd().imageUrl}/${type.imagePath}",
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
