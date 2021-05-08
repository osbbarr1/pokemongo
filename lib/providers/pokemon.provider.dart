import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokemongo/models/pokemon.models.dart';
import 'package:pokemongo/serializable/serializers.dart';
import 'package:pokemongo/serializable/pokemon_response.dart';

class PokemonProviders {
  List<RandorUserResponse> listaPokemon = [];
  Future<RandorUserResponse> getListaPokemon(String urlPokemon) async {
    var url = Uri.https('pokeapi.co', '/api/v2/pokemon/$urlPokemon');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      String jsonoscar =
          '{"abilities":[{"ability":{"name":"limber","url":"https://pokeapi.co/api/v2/ability/7/"},"is_hidden":false,"slot":1},{"ability":{"name":"imposter","url":"https://pokeapi.co/api/v2/ability/150/"},"is_hidden":true,"slot":3}]}';
      final randorUserResponJsonMap = json.decode(response.body);
      //var itemCount = jsonResponse['totalItems'];
      final randorUserResponde =
          RandorUserResponse.fromJson(randorUserResponJsonMap);
      listaPokemon.add(randorUserResponde);
      // print(randorUserResponde);
      return randorUserResponde;
    } else {
      print('hay un error status: ${response.statusCode}');
    }
  }
}
