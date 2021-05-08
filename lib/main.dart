import 'package:flutter/material.dart';
import 'package:pokemongo/page/DetailPage.dart';
import 'package:pokemongo/page/HomePagePokemon.dart';
import 'package:pokemongo/page/PokeCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData.light(),
      //home: DetailPage(),
      home: PokeCard(),
      //home: detailPage());
    );
  }
}
