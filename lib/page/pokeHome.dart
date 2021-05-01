import 'package:flutter/material.dart';
import 'package:pokemongo/providers/pokemon.provider.dart';

class HomePagePokemon extends StatefulWidget {
  @override
  _HomePagePokemonState createState() => _HomePagePokemonState();
}

class _HomePagePokemonState extends State<HomePagePokemon> {
  final PokemonProviders pokemonProviders = PokemonProviders();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyPokemon(),
    );
  }

  bodyPokemon() {
    pokemonProviders.getListaPokemon("pikachu");
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "Pokémon",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
