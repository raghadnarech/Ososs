import 'package:flutter/material.dart';
import 'package:ososs/Controller/ShapeProvider.dart';

class AnimatedShape extends StatelessWidget {
  const AnimatedShape({
    required this.shapeProvider,
  });

  final ShapeProvider shapeProvider;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: shapeProvider.selectedShape == Shape.circle
                ? BorderRadius.circular(150)
                : shapeProvider.selectedShape == Shape.square
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(50),
            color: shapeProvider.selectedShape == Shape.circle
                ? Colors.red[400]
                : shapeProvider.selectedShape == Shape.square
                    ? Colors.blue[900]
                    : Colors.blue[300],
          ),
        ),
      ),
    );
  }
}
