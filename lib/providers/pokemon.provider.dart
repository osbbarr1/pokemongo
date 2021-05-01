import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class PokemonProviders {
  getListaPokemon(String urlPokemon) async {
    var url = Uri.https('pokeapi.co', '/api/v2/pokemon/$urlPokemon');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      //var itemCount = jsonResponse['totalItems'];
      print('Pokemonnnn http: $jsonResponse');
    } else {
      print('hay un error status: ${response.statusCode}.');
    }
  }
}
