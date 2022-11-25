import 'package:flutter/material.dart';
import 'package:test_technique/poke_grid.dart';
import 'package:test_technique/poke_models.dart';

class SearchPokemon extends StatelessWidget {
  final List<Pokemon> pokeList;
  const SearchPokemon({
    Key? key,
    required this.pokeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          )
        ],
      ),
      body: Text("test"),
    );
  }
}


