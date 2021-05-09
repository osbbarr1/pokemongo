import 'package:flutter/material.dart';
import '../serializable/pokemon_response.dart';
import 'package:pokemongo/page/DetailPage.dart';
import 'package:pokemongo/page/HomePagePokemon.dart';

class PokeCard extends StatelessWidget {
  //final RandorUserResponse responseJson;
  PokeCard(/*this.responseJson*/);
  String urlImage =
      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png";
  String nombrePoke = "bolbasor";
  String hpPoke = "30";
  String attPoke = "30";
  String puntaPoke = "30";
  String attSpecialpoke = "30";
  String defPokemon = "30";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
        title: Text("Pokedex",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 50,
            )),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'hacia detalles',
              color: Colors.yellow,
              onPressed: () {}),
        ],
      ),

      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
            child: Column(
              children: [
                Container(
                  height: 15,
                ),
                Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      "Poke Card",
                      style: TextStyle(fontSize: 30, color: Colors.yellow),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                        ),
                        Container(
                          height: 400,
                          width: 280,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Container(
                                height: 130,
                                color: Colors.red[200],
                              ),
                              Positioned(
                                  top: 60,
                                  right: 80,
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: NetworkImage(urlImage))),
                                  )),
                              Positioned(
                                top: 180,
                                right: 90,
                                child: Container(
                                  height: 70,
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                        children: [
                                          Text(
                                            nombrePoke,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                          Container(
                                            width: 10,
                                          ),
                                          Positioned(
                                              top: 180,
                                              right: 20,
                                              child: Text(
                                                hpPoke + " HP",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.grey[300]),
                                              ))
                                        ],
                                      )),
                                ),
                              ),
                              Positioned(
                                top: 230,
                                child: Container(
                                  color: Colors.grey[400],
                                  width: 300,
                                  height: 5,
                                ),
                              ),
                              Positioned(
                                top: 270,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                    ),
                                    Text(
                                      attPoke + "K",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Container(
                                      width: 60,
                                    ),
                                    Text(
                                      puntaPoke + "K",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Container(
                                      width: 60,
                                    ),
                                    Text(
                                      defPokemon + "K",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 310,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                    ),
                                    Text(
                                      "Ataque",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[400]),
                                    ),
                                    Container(
                                      width: 40,
                                    ),
                                    Text(
                                      "Puntuacion \natque \nespecial",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[400]),
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                    Text(
                                      "Defensa",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[400]),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 400,
                          width: 7,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                    Container(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text("Ver Detalle"),
                      onPressed: () {
                        /*Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetallePokemon(responseJson)));*/
                      },
                    ),
                    /*Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    /*Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetallePokemon(responseJson)));*/
                                  },
                                  child: Text("Ver Detalle"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),*/
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
      //child: child,
    );
  }
}
