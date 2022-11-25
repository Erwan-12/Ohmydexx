import 'package:flutter/material.dart';
import 'package:test_technique/poke_grid.dart';
import 'package:test_technique/poke_models.dart';

class SearchPokemon extends StatelessWidget {
  final List<Pokemon> pokeList;
  const SearchPokemon({
    Key? key,
    required this.pokeList,
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
  }) : super(key: key);

  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: margin,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                child: TextFormField(
                    decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'Search Pokemon, Move, Ability etc',
                      contentPadding: EdgeInsets.zero,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        // color: AppColors.grey,
                        height: 1,
                      ),
                      border: InputBorder.none,
                    )
                ),
              )

              ],
            ),

          )
        ],
      ),
      body: Text("test"),
    );
  }
}


