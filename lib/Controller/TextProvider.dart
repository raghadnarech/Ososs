import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  String _text = "Your name";

  String get text => _text;

  void setText(String value) {
    _text = value;
    notifyListeners();
  }

  void clearText() {
    _text = '';
    notifyListeners();
  }
}
