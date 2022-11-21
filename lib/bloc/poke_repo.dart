import 'dart:convert';

import 'package:test_technique/poke_models.dart';
import "package:http/http.dart";

abstract class PokeRepo {
  Future<List<Pokemon>> getPokemon();
}

class PokeRepoImpl implements PokeRepo {
  String url =
      "https://source.ohmytag.fr/testtechnique/pokedex/-/raw/production/pokedex.json";
  @override
  Future<List<Pokemon>> getPokemon() async {
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List pokemons = jsonDecode(response.body);
      return pokemons.map((e) => Pokemon.fromJson(e)).toList();
    } else {
      throw Exception();
    }
  }
}
