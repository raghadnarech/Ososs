import 'package:flutter/material.dart';
import 'package:ososs/Controller/PokemonProvider.dart';
import 'package:ososs/Widgets/Card/CardPokemon.dart';
import 'package:ososs/main.dart';
import 'package:provider/provider.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    Future.delayed(Duration.zero).then((value) async {
      await pokemonProvider.getPokemons();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    pokemonProvider = Provider.of<PokemonProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Pokemons")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pokemonProvider.isloadingGetPokemons
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.blue[300],
                ),
              )
            : ListView.builder(
                itemCount: pokemonProvider.pokemons.length,
                itemBuilder: (context, index) =>
                    CardPokemon(width: width, index: index),
              ),
      ),
    );
  }
}
