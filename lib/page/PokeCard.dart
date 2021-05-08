import 'package:flutter/material.dart';
import '../serializable/pokemon_response.dart';
import 'package:pokemongo/page/DetailPage.dart';
import 'package:pokemongo/page/HomePagePokemon.dart';

class PokeCard extends StatelessWidget {
  final RandorUserResponse responseJson;
  PokeCard(this.responseJson);

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
                  height: 30,
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
                    Container(
                      height: 400,
                      width: 280,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              radius: 110.0,
                              backgroundImage: NetworkImage(
                                  responseJson.sprites.front_default),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetallePokemon(responseJson)));
                                  },
                                  child: Text("Ver Detalle"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
