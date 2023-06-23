import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ososs/Controller/ShapeProvider.dart';
import 'package:ososs/Controller/TextProvider.dart';
import 'package:ososs/Widgets/Shape/AnimatedShape.dart';
import 'package:ososs/Widgets/Shape/CustomShape.dart';
import 'package:ososs/main.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final textProvider = Provider.of<TextProvider>(context);
    shapeProvider = Provider.of<ShapeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            AutoSizeText(
              textProvider.text,
              minFontSize: 18,
            ),
            AnimatedShape(shapeProvider: shapeProvider),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomShape(
                    shapeProvider: shapeProvider,
                    color: Colors.blue[900],
                    shape: Shape.square,
                    radius: 0),
                CustomShape(
                    shapeProvider: shapeProvider,
                    color: Colors.blue[300],
                    shape: Shape.squererounder,
                    radius: 10),
                CustomShape(
                    shapeProvider: shapeProvider,
                    color: Colors.red[400],
                    shape: Shape.circle,
                    radius: 25),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
