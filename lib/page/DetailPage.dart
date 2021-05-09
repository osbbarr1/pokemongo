import 'package:flutter/material.dart';
import 'package:pokemongo/serializable/pokemon_response.dart';
import 'package:pokemongo/page/HomePagePokemon.dart';

import 'PokeCard.dart';

class DetallePokemon extends StatelessWidget {
  final RandorUserResponse responseJson;
  DetallePokemon(this.responseJson);
  String pokepeso = "69";
  String pokemonAltura = "7";
  String pokemonHP = "45";
  String pokemonDef = "49";
  String pokemonAtt = "65";
  String pokemonSpe = "45";
  String pokemonSpAtt = "65";
  String pokemonSpDef = "65";
  String pokemonType = "poison";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pokedex",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 50,
              )),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.yellow,
            onPressed: () {
              Navigator.push(
                  context,
                  // Create the SelectionScreen in the next step.
                  MaterialPageRoute(
                      builder: (context) => PokeCard(responseJson)));
            },
          ),
          backgroundColor: Colors.red,
        ),
        body: _body()
        //child: child,
        );
  }

  _body() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: Column(
              children: [
                Container(
                  //color: Colors.cyan,
                  height: 30,
                ),
                Container(
                    //                       color: Colors.blue,
                    height: 50,
                    child: Center(
                        child: Text("Poke Card Detalles",
                            style: TextStyle(
                                fontSize: 30, color: Colors.yellow)))),
                Container(
                  height: 400,
                  width: 330,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.white,
                            alignment: Alignment.topLeft,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(
                                //body:Image.network('https://picsum.photos/250?image=9')
                                radius: 900.0,
                                backgroundImage: NetworkImage(
                                    responseJson.sprites.front_default),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 10,
                      ),
                      Container(
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Descripcion: ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left)),
                      ),
                      Container(
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Nombre: " + responseJson.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left)),
                      ),
                      Container(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Container(
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Altura: " +
                                          responseJson.height.toString() +
                                          " Ua",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left)),
                            ),
                          ],
                        ),
                      )),
                      Container(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Container(
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Puntos de salud: " +
                                          responseJson.stats.first.base_stat
                                              .toString(),
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left)),
                            ),
                          ],
                        ),
                      )),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Container(
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "Tipo: " +
                                            responseJson.types.first.slot
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.left)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Container(
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "puntos de ataque: " +
                                            responseJson.stats.first.base_stat
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.left)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Container(
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "puntos de defensa: " +
                                            responseJson.stats.first.base_stat
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.left)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Container(
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "puntos del ataque especial: " +
                                            responseJson.stats.first.base_stat
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.left)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Container(
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "puntos de la defensa especial: " +
                                            responseJson.stats.last.base_stat
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.left)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
