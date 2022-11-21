import 'package:flutter/material.dart';
import 'package:test_technique/poke_models.dart';

class DetailPokemon extends StatelessWidget {
  final Pokemon pokemon;
  const DetailPokemon({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${pokemon.name}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "${pokemon.name}",
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Height ${pokemon.height}"),
            Text("Weight ${pokemon.weight}"),
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("${pokemon.thumbnailImage}"),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Type",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            Text(
              "${pokemon.type}",
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Weakness",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            Text(
              "${pokemon.weakness}",
            ),
          ],
        ),
      ),
    );
  }
}