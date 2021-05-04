// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RandorUserResponse> _$randorUserResponseSerializer =
    new _$RandorUserResponseSerializer();
Serializer<Sprites> _$spritesSerializer = new _$SpritesSerializer();
Serializer<RandorUser> _$randorUserSerializer = new _$RandorUserSerializer();
Serializer<Ability> _$abilitySerializer = new _$AbilitySerializer();

class _$RandorUserResponseSerializer
    implements StructuredSerializer<RandorUserResponse> {
  @override
  final Iterable<Type> types = const [RandorUserResponse, _$RandorUserResponse];
  @override
  final String wireName = 'RandorUserResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, RandorUserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'abilities',
      serializers.serialize(object.abilities,
          specifiedType:
              const FullType(BuiltList, const [const FullType(RandorUser)])),
      'sprites',
      serializers.serialize(object.sprites,
          specifiedType: const FullType(Sprites)),
    ];

    return result;
  }

  @override
  RandorUserResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RandorUserResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'abilities':
          result.abilities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RandorUser)]))
              as BuiltList<Object>);
          break;
        case 'sprites':
          result.sprites.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sprites)) as Sprites);
          break;
      }
    }

    return result.build();
  }
}

class _$SpritesSerializer implements StructuredSerializer<Sprites> {
  @override
  final Iterable<Type> types = const [Sprites, _$Sprites];
  @override
  final String wireName = 'Sprites';

  @override
  Iterable<Object> serialize(Serializers serializers, Sprites object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'back_default',
      serializers.serialize(object.back_default,
          specifiedType: const FullType(String)),
      'front_default',
      serializers.serialize(object.front_default,
          specifiedType: const FullType(String)),
      'front_shiny',
      serializers.serialize(object.front_shiny,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Sprites deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpritesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'back_default':
          result.back_default = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'front_default':
          result.front_default = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'front_shiny':
          result.front_shiny = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RandorUserSerializer implements StructuredSerializer<RandorUser> {
  @override
  final Iterable<Type> types = const [RandorUser, _$RandorUser];
  @override
  final String wireName = 'RandorUser';

  @override
  Iterable<Object> serialize(Serializers serializers, RandorUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'is_hidden',
      serializers.serialize(object.is_hidden,
          specifiedType: const FullType(bool)),
      'slot',
      serializers.serialize(object.slot, specifiedType: const FullType(int)),
      'ability',
      serializers.serialize(object.ability,
          specifiedType: const FullType(Ability)),
    ];

    return result;
  }

  @override
  RandorUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RandorUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'is_hidden':
          result.is_hidden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'slot':
          result.slot = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ability':
          result.ability.replace(serializers.deserialize(value,
              specifiedType: const FullType(Ability)) as Ability);
          break;
      }
    }

    return result.build();
  }
}

class _$AbilitySerializer implements StructuredSerializer<Ability> {
  @override
  final Iterable<Type> types = const [Ability, _$Ability];
  @override
  final String wireName = 'Ability';

  @override
  Iterable<Object> serialize(Serializers serializers, Ability object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Ability deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AbilityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RandorUserResponse extends RandorUserResponse {
  @override
  final BuiltList<RandorUser> abilities;
  @override
  final Sprites sprites;

  factory _$RandorUserResponse(
          [void Function(RandorUserResponseBuilder) updates]) =>
      (new RandorUserResponseBuilder()..update(updates)).build();

  _$RandorUserResponse._({this.abilities, this.sprites}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        abilities, 'RandorUserResponse', 'abilities');
    BuiltValueNullFieldError.checkNotNull(
        sprites, 'RandorUserResponse', 'sprites');
  }

  @override
  RandorUserResponse rebuild(
          void Function(RandorUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RandorUserResponseBuilder toBuilder() =>
      new RandorUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RandorUserResponse &&
        abilities == other.abilities &&
        sprites == other.sprites;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, abilities.hashCode), sprites.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RandorUserResponse')
          ..add('abilities', abilities)
          ..add('sprites', sprites))
        .toString();
  }
}

class RandorUserResponseBuilder
    implements Builder<RandorUserResponse, RandorUserResponseBuilder> {
  _$RandorUserResponse _$v;

  ListBuilder<RandorUser> _abilities;
  ListBuilder<RandorUser> get abilities =>
      _$this._abilities ??= new ListBuilder<RandorUser>();
  set abilities(ListBuilder<RandorUser> abilities) =>
      _$this._abilities = abilities;

  SpritesBuilder _sprites;
  SpritesBuilder get sprites => _$this._sprites ??= new SpritesBuilder();
  set sprites(SpritesBuilder sprites) => _$this._sprites = sprites;

  RandorUserResponseBuilder();

  RandorUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _abilities = $v.abilities.toBuilder();
      _sprites = $v.sprites.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RandorUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RandorUserResponse;
  }

  @override
  void update(void Function(RandorUserResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RandorUserResponse build() {
    _$RandorUserResponse _$result;
    try {
      _$result = _$v ??
          new _$RandorUserResponse._(
              abilities: abilities.build(), sprites: sprites.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'abilities';
        abilities.build();
        _$failedField = 'sprites';
        sprites.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RandorUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Sprites extends Sprites {
  @override
  final String back_default;
  @override
  final String front_default;
  @override
  final String front_shiny;

  factory _$Sprites([void Function(SpritesBuilder) updates]) =>
      (new SpritesBuilder()..update(updates)).build();

  _$Sprites._({this.back_default, this.front_default, this.front_shiny})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        back_default, 'Sprites', 'back_default');
    BuiltValueNullFieldError.checkNotNull(
        front_default, 'Sprites', 'front_default');
    BuiltValueNullFieldError.checkNotNull(
        front_shiny, 'Sprites', 'front_shiny');
  }

  @override
  Sprites rebuild(void Function(SpritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpritesBuilder toBuilder() => new SpritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sprites &&
        back_default == other.back_default &&
        front_default == other.front_default &&
        front_shiny == other.front_shiny;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, back_default.hashCode), front_default.hashCode),
        front_shiny.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sprites')
          ..add('back_default', back_default)
          ..add('front_default', front_default)
          ..add('front_shiny', front_shiny))
        .toString();
  }
}

class SpritesBuilder implements Builder<Sprites, SpritesBuilder> {
  _$Sprites _$v;

  String _back_default;
  String get back_default => _$this._back_default;
  set back_default(String back_default) => _$this._back_default = back_default;

  String _front_default;
  String get front_default => _$this._front_default;
  set front_default(String front_default) =>
      _$this._front_default = front_default;

  String _front_shiny;
  String get front_shiny => _$this._front_shiny;
  set front_shiny(String front_shiny) => _$this._front_shiny = front_shiny;

  SpritesBuilder();

  SpritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _back_default = $v.back_default;
      _front_default = $v.front_default;
      _front_shiny = $v.front_shiny;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sprites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Sprites;
  }

  @override
  void update(void Function(SpritesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sprites build() {
    final _$result = _$v ??
        new _$Sprites._(
            back_default: BuiltValueNullFieldError.checkNotNull(
                back_default, 'Sprites', 'back_default'),
            front_default: BuiltValueNullFieldError.checkNotNull(
                front_default, 'Sprites', 'front_default'),
            front_shiny: BuiltValueNullFieldError.checkNotNull(
                front_shiny, 'Sprites', 'front_shiny'));
    replace(_$result);
    return _$result;
  }
}

class _$RandorUser extends RandorUser {
  @override
  final bool is_hidden;
  @override
  final int slot;
  @override
  final Ability ability;

  factory _$RandorUser([void Function(RandorUserBuilder) updates]) =>
      (new RandorUserBuilder()..update(updates)).build();

  _$RandorUser._({this.is_hidden, this.slot, this.ability}) : super._() {
    BuiltValueNullFieldError.checkNotNull(is_hidden, 'RandorUser', 'is_hidden');
    BuiltValueNullFieldError.checkNotNull(slot, 'RandorUser', 'slot');
    BuiltValueNullFieldError.checkNotNull(ability, 'RandorUser', 'ability');
  }

  @override
  RandorUser rebuild(void Function(RandorUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RandorUserBuilder toBuilder() => new RandorUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RandorUser &&
        is_hidden == other.is_hidden &&
        slot == other.slot &&
        ability == other.ability;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, is_hidden.hashCode), slot.hashCode), ability.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RandorUser')
          ..add('is_hidden', is_hidden)
          ..add('slot', slot)
          ..add('ability', ability))
        .toString();
  }
}

class RandorUserBuilder implements Builder<RandorUser, RandorUserBuilder> {
  _$RandorUser _$v;

  bool _is_hidden;
  bool get is_hidden => _$this._is_hidden;
  set is_hidden(bool is_hidden) => _$this._is_hidden = is_hidden;

  int _slot;
  int get slot => _$this._slot;
  set slot(int slot) => _$this._slot = slot;

  AbilityBuilder _ability;
  AbilityBuilder get ability => _$this._ability ??= new AbilityBuilder();
  set ability(AbilityBuilder ability) => _$this._ability = ability;

  RandorUserBuilder();

  RandorUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _is_hidden = $v.is_hidden;
      _slot = $v.slot;
      _ability = $v.ability.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RandorUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RandorUser;
  }

  @override
  void update(void Function(RandorUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RandorUser build() {
    _$RandorUser _$result;
    try {
      _$result = _$v ??
          new _$RandorUser._(
              is_hidden: BuiltValueNullFieldError.checkNotNull(
                  is_hidden, 'RandorUser', 'is_hidden'),
              slot: BuiltValueNullFieldError.checkNotNull(
                  slot, 'RandorUser', 'slot'),
              ability: ability.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ability';
        ability.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RandorUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ability extends Ability {
  @override
  final String name;
  @override
  final String url;

  factory _$Ability([void Function(AbilityBuilder) updates]) =>
      (new AbilityBuilder()..update(updates)).build();

  _$Ability._({this.name, this.url}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Ability', 'name');
    BuiltValueNullFieldError.checkNotNull(url, 'Ability', 'url');
  }

  @override
  Ability rebuild(void Function(AbilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbilityBuilder toBuilder() => new AbilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ability && name == other.name && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ability')
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class AbilityBuilder implements Builder<Ability, AbilityBuilder> {
  _$Ability _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  AbilityBuilder();

  AbilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ability;
  }

  @override
  void update(void Function(AbilityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ability build() {
    final _$result = _$v ??
        new _$Ability._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Ability', 'name'),
            url: BuiltValueNullFieldError.checkNotNull(url, 'Ability', 'url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
