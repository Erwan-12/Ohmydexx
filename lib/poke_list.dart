import 'package:flutter/material.dart';
import 'package:test_technique/poke_grid.dart';
import 'package:test_technique/poke_models.dart';
import 'package:test_technique/poke_search.dart';

class ListPokemon extends StatelessWidget {
  final List<Pokemon> pokeList;

  const ListPokemon({
    Key? key,
    required this.pokeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Le OhMyDex"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPokemon(pokeList: pokeList)));
              },
              icon: const Icon(Icons.search),
            ),
          )
        ],
      ),
      body: PokeGrid(pokeList: pokeList),
    );
  }
}
