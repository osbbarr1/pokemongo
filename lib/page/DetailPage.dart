import 'package:flutter/material.dart';
import 'package:pokemongo/serializable/pokemon_response.dart';
import 'package:pokemongo/page/HomePagePokemon.dart';

class DetallePokemon extends StatelessWidget {
  final RandorUserResponse responseJson;
  DetallePokemon(this.responseJson);
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
              Navigator.push(
                  context,
                  // Create the SelectionScreen in the next step.
                  MaterialPageRoute(builder: (context) => HomePagePokemon()));
            },
          ),
          backgroundColor: Colors.red,
        ),
        body: _body()
        //child: child,
        );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Expanded(
              child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.cyan,
                        height: 30,
                      ),
                      Container(
                          //   color: Colors.blue,
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
                                responseJson.sprites.front_default),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 330,
                        // color: Colors.blue,
                        child: Column(
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Nombre: " + responseJson.name.toString(),
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
                                        child:
                                            Text("peso: " + pokepeso + " Up ",
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
                                            "Altura: " +
                                                responseJson.height.toString() +
                                                " Ua",
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
                                        child: Text(
                                            "Puntos de salud: " + pokemonHP,
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
                            ))
                          ],
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
