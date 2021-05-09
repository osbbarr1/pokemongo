import 'package:flutter/material.dart';

import 'HomePagePokemon.dart';

class NoFindCard extends StatefulWidget {
  NoFindCard({Key key}) : super(key: key);

  @override
  _NoFindCardState createState() => _NoFindCardState();
}

class _NoFindCardState extends State<NoFindCard> {
  String mensaje = "Pokemòn no encontrado";
  String nombrePoke = "--------";
  String hpPoke = "----------";
  String attPoke = "----------";
  String puntaPoke = "--------";
  String attSpecialpoke = "--------------";
  String defPokemon = "-----------";
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
                                  top: 110,
                                  right: 40,
                                  child: Text(
                                    mensaje,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                      width: 20,
                                    ),
                                    Text(
                                      attPoke,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Container(
                                      width: 50,
                                    ),
                                    Text(
                                      puntaPoke,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Container(
                                      width: 30,
                                    ),
                                    Text(
                                      defPokemon,
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
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
