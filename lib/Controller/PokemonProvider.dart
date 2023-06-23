import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ososs/Model/Pokemon.dart';
import 'package:http/http.dart' as http;

const baseurl = "https://pokeapi.co/api/v2/pokemon";
const urlimage =
    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home";

class PokemonProvider with ChangeNotifier {
  Pokemon pokemon = Pokemon();
  List<Pokemon> pokemons = [];
  bool isloadingGetPokemons = false;

  Future<bool> getPokemons() async {
    pokemons = [];
    isloadingGetPokemons = true;
    notifyListeners();

    try {
      http.Response response = await http.get(Uri.parse(baseurl));
      if (response.statusCode == 200) {
        dynamic data = jsonDecode(response.body);
        List<dynamic> result = data['results'];
        for (int i = 0; i < result.length; i++) {
          pokemon = Pokemon(
            name: result[i]["name"],
            image: "$urlimage/${i + 1}.png",
          );
          pokemons.add(pokemon);
          notifyListeners();
        }
        isloadingGetPokemons = false;
        notifyListeners();
        return true;
      } else {
        isloadingGetPokemons = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      print(e);
      isloadingGetPokemons = false;
      notifyListeners();
      return false;
    }
  }
}
