import 'package:flutter/material.dart';
import 'package:pokemongo/page/NoFindCard.dart';
import 'package:pokemongo/page/PokeCard.dart';
import 'package:pokemongo/providers/pokemon.provider.dart';
import 'package:pokemongo/serializable/pokemon_response.dart';

import 'DetailPage.dart';

class DetallesFuture extends StatefulWidget {
  final String pokemonStr;
  DetallesFuture(this.pokemonStr);
  @override
  _DetallesFutureState createState() => _DetallesFutureState();
}

class _DetallesFutureState extends State<DetallesFuture> {
  final PokemonProviders pokemonProviders = PokemonProviders();
  String findPokemodar;
  Future<RandorUserResponse> listaRandor;
  @override
  void initState() {
    findPokemodar = this.widget.pokemonStr;
    listaRandor = pokemonProviders.getListaPokemon(findPokemodar);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyFuture(),
    );
  }

  _bodyFuture() {
    return FutureBuilder(
        future: listaRandor,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final dataJson = snapshot.data;

            PokeCard pokeCard = PokeCard(dataJson);
            return pokeCard;
          } else {
            NoFindCard noFindCard = NoFindCard();
            return noFindCard;
          }
        });
  }
}
