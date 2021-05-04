class Pokemon {
  Pokemon({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
      );

  Map<String, dynamic> toJson() => {
        "back_default": backDefault,
        "back_shiny": backShiny,
        "front_default": frontDefault,
        "front_shiny": frontShiny,
      };
}
