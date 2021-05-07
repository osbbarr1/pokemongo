import 'package:flutter/material.dart';
import 'package:pokemongo/page/detailPage.dart';
import 'package:pokemongo/page/pokeHome.dart';

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
      home: HomePagePokemon(),
      //home: detailPage());
    );
  }
}
