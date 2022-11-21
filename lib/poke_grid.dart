import 'package:flutter/material.dart';
import 'package:test_technique/poke_details.dart';
import 'package:test_technique/poke_models.dart';

class PokeGrid extends StatelessWidget {
  const PokeGrid({
    Key? key,
    required this.pokeList,
  }) : super(key: key);

  final List<Pokemon> pokeList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pokeList.length,
      scrollDirection: Axis.vertical,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPokemon(
                  pokemon: pokeList[index],
                ),
              ),
            );
          },
          child: Card(
            elevation: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("${pokeList[index].thumbnailImage}"),
                    ),
                  ),
                ),
                Text("${pokeList[index].number}"),
              ],
            ),
          ),
        );
      },
    );
  }
}
