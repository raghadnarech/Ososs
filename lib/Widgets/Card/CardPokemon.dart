import 'package:flutter/material.dart';
import 'package:ososs/main.dart';

class CardPokemon extends StatelessWidget {
  CardPokemon({
    required this.index,
    required this.width,
  });
  final int index;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: 120,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 1,
              color: Color.fromARGB(255, 201, 201, 201),
              offset: Offset(1, 5)),
          BoxShadow(
              blurRadius: 1,
              color: Color.fromARGB(255, 201, 201, 201),
              offset: Offset(-1, 0)),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20)),
              height: 120,
              width: 120,
              child: Image.network("${pokemonProvider.pokemons[index].image}",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${pokemonProvider.pokemons[index].name}"),
            ),
          ],
        ),
      ),
    );
  }
}

class $ {}
