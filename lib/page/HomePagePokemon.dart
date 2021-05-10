import 'package:flutter/material.dart';
import 'package:pokemongo/page/DetailPage.dart';
import 'package:pokemongo/providers/pokemon.provider.dart';

import 'detalesFuture.dart';

class HomePagePokemon extends StatefulWidget {
  @override
  _HomePagePokemonState createState() => _HomePagePokemonState();
}

class _HomePagePokemonState extends State<HomePagePokemon> {
  final PokemonProviders pokemonProviders = PokemonProviders();
  final pokemonInText = TextEditingController();

  String pokemonStr = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyPokemon(),
    );
  }

  bodyPokemon() {
    //pokemonProviders.getListaPokemon("ditto");
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
                      "Pokedex",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.amber,
                  //height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //color: Colors.blue,
                      width: 150,
                      height: 250,
                      child: Center(
                          child:
                              Image(image: AssetImage('assets/pikachu1.png'))),
                    ),
                    Container(
                      //color: Colors.white,
                      width: 150,
                      height: 270,
                      child: Center(
                        child: Text(
                          "¡Bienvenido a la Pokedex!" +
                              "\n " +
                              "\n Por favor escriba el nombre del pokèmon o el numero de identificación del mismo. ",
                          style: TextStyle(fontSize: 20, color: Colors.yellow),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        controller: pokemonInText,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Insertar nombre pokèmon',
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.white),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            pokemonStr = pokemonInText.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetallesFuture(pokemonStr),
                              ),
                            );
                          },
                          child: Text("Buscar"),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
