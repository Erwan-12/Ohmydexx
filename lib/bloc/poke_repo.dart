import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart' show rootBundle;

import 'package:test_technique/poke_models.dart';
import "package:http/http.dart";

abstract class PokeRepo {
  Future<List<Pokemon>> getPokemon();
}

Future<String> getJson() {
  return rootBundle.loadString('pokedex.json');
}

class PokeRepoImpl implements PokeRepo {
  String url =
      "https://cdn.discordapp.com/attachments/1045628585312002049/1045637306771574784/pokedex.json";
  @override
  Future<List<Pokemon>> getPokemon() async {
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      // get json array from response body
      final List pokemons = jsonDecode(await getJson());
      //init list with correct type
      List<Pokemon> list1 = List.empty(growable: true);
      //loop into response objects
       for(var i = 0; i < pokemons.length; i++)
         {
           //check if object is not Null
           if (pokemons[i].runtimeType == Null){
             break;
           }
           //add to list
           list1.add(Pokemon.fromJson(pokemons[i]));
         }
       return list1;
    } else {
      throw Exception();
    }
  }
}
