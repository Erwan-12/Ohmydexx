import 'package:flutter/material.dart';
import 'package:test_technique/poke_grid.dart';
import 'package:test_technique/poke_models.dart';

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
        title: const Text("Le Pokedex OhMyTag"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          )
        ],
      ),
      body: PokeGrid(pokeList: pokeList),
    );
  }
}
