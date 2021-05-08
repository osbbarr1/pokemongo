import 'package:flutter/material.dart';

class PokeCard extends StatefulWidget {
  PokeCard({Key key}) : super(key: key);

  @override
  _PokeCardState createState() => _PokeCardState();
}

class _PokeCardState extends State<PokeCard> {
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
            Navigator.pop(context);
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

      body: _body(),
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
                height: 30,
              ),
              Container(
                  height: 50,
                  child: Center(
                      child: Text("Poke Card",
                          style:
                              TextStyle(fontSize: 30, color: Colors.yellow)))),
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
                            backgroundImage: NetworkImage(
                                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ))
      ],
    );
  }
}
