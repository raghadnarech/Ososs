import 'package:flutter/material.dart';
import 'package:ososs/Controller/PokemonProvider.dart';
import 'package:ososs/Controller/ShapeProvider.dart';
import 'package:ososs/Controller/TextProvider.dart';
import 'package:ososs/View/HomePage.dart';
import 'package:ososs/View/Page1.dart';
import 'package:ososs/View/Page2.dart';
import 'package:ososs/View/Splash.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TextProvider>(
        create: (context) => TextProvider(),
      ),
      ChangeNotifierProvider<ShapeProvider>(
        create: (context) => ShapeProvider(),
      ),
      ChangeNotifierProvider<PokemonProvider>(
        create: (context) => PokemonProvider(),
      )
    ],
    child: MyApp(),
  ));
}

TextProvider textProvider = TextProvider();
PokemonProvider pokemonProvider = PokemonProvider();
ShapeProvider shapeProvider = ShapeProvider();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Colors.blue[300])),
      routes: {
        '/': (context) => Splash(),
        'Home': (context) => HomePage(),
        'Page1': (context) => Page1(),
        'Page2': (context) => Page2(),
      },
      initialRoute: '/',
    );
  }
}
