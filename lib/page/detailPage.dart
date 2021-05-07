import 'dart:ui';

import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  detailPage({Key key}) : super(key: key);

  @override
  _detailPageState createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  // variables
  String urlImage =
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png';
  String pokemonName = 'bulbasaur';
  String pokepeso = "69";
  String pokemonAltura = "7";
  String pokemonNEvoluciones = "3";
  String pokemonNEscEvolu = "1";
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
              Navigator.pop(context);
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
                            child: Text("Poke Card",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.yellow)))),
                    Container(
                      height: 150,
                      width: 150,
                      //color: Colors.blue,
                      child: Center(
                        child: CircleAvatar(
                          //body:Image.network('https://picsum.photos/250?image=9')
                          radius: 90.0,
                          backgroundImage: NetworkImage(
                              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 330,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Descripción: ",
                          style: TextStyle(fontSize: 20, color: Colors.yellow),
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 330,
                      color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 10,
                          ),
                          Container(
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Nombre: " + pokemonName,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.yellow,
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
                                      child: Text("peso: " + pokepeso + " Up ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
                                          ),
                                          textAlign: TextAlign.left)),
                                ),
                                Container(
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                          "Altura: " + pokemonAltura + " Ua",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
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
                                          "Numeros de evouciònes: " +
                                              pokemonNEvoluciones,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
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
                                          "Escala de evoluciòn: " +
                                              pokemonNEscEvolu,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
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
                                      child:
                                          Text("Puntos de salud: " + pokemonHP,
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.yellow,
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
                                      child: Text("Tipo: " + pokemonType,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
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
                                          "puntos de ataque: " + pokemonAtt,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
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
                                          "puntos de defensa: " + pokemonSpAtt,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
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
                                          "puntos del ataque especial: " +
                                              pokemonSpAtt,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
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
                                          "puntos de la defensa especial: " +
                                              pokemonSpDef,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.yellow,
                                          ),
                                          textAlign: TextAlign.left)),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                )))
      ],
    );
  }
}
