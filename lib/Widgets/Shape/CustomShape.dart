import 'package:flutter/material.dart';
import 'package:ososs/Controller/ShapeProvider.dart';

class CustomShape extends StatelessWidget {
  CustomShape(
      {required this.shapeProvider, this.color, this.radius, this.shape});
  Shape? shape;
  Color? color;
  double? radius;
  final ShapeProvider shapeProvider;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        shapeProvider.setSelectedShape(shape!);
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius!),
        ),
      ),
    );
  }
}
