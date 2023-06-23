import 'package:flutter/material.dart';

enum Shape { circle, square, squererounder }

class ShapeProvider with ChangeNotifier {
  Shape _selectedShape = Shape.circle;

  Shape get selectedShape => _selectedShape;

  void setSelectedShape(Shape shape) {
    _selectedShape = shape;
    notifyListeners();
  }
}
