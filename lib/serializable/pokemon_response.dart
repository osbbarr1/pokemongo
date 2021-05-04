import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pokemongo/serializable/serializers.dart';

part 'pokemon_response.g.dart';

abstract class RandorUserResponse
    implements Built<RandorUserResponse, RandorUserResponseBuilder> {
  BuiltList<RandorUser> get abilities;
  Sprites get sprites;

  RandorUserResponse._();
  factory RandorUserResponse(
          [void Function(RandorUserResponseBuilder) updates]) =
      _$RandorUserResponse;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(RandorUserResponse.serializer, this);
  }

  static RandorUserResponse fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RandorUserResponse.serializer, json);
  }

  static Serializer<RandorUserResponse> get serializer =>
      _$randorUserResponseSerializer;
}

abstract class Sprites implements Built<Sprites, SpritesBuilder> {
  String get back_default;
  String get front_default;
  String get front_shiny;

  Sprites._();
  factory Sprites([void Function(SpritesBuilder) updates]) = _$Sprites;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Sprites.serializer, this);
  }

  static Sprites fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Sprites.serializer, json);
  }

  static Serializer<Sprites> get serializer => _$spritesSerializer;
}

abstract class RandorUser implements Built<RandorUser, RandorUserBuilder> {
  bool get is_hidden;
  int get slot;
  Ability get ability;

  RandorUser._();
  factory RandorUser([void Function(RandorUserBuilder) updates]) = _$RandorUser;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(RandorUser.serializer, this);
  }

  static RandorUser fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RandorUser.serializer, json);
  }

  static Serializer<RandorUser> get serializer => _$randorUserSerializer;
}

abstract class Ability implements Built<Ability, AbilityBuilder> {
  String get name;
  String get url;

  Ability._();
  factory Ability([void Function(AbilityBuilder) updates]) = _$Ability;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Ability.serializer, this);
  }

  static Ability fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Ability.serializer, json);
  }

  static Serializer<Ability> get serializer => _$abilitySerializer;
}
