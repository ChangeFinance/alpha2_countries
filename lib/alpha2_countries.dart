library alpha2_countries;

import 'dart:convert';

import 'package:alpha2_countries/alpha2_countries_data.dart';
import 'package:collection/collection.dart';

class Countries {
  static final Countries _singleton = new Countries._internal();
  late List<Country> _data;

  factory Countries() {
    return _singleton;
  }

  Countries._internal() {
    _init();
  }

  void _init() {
    List data = json.decode(countriesJson);
    _data = data.map((e) => Country.fromJson(e)).toList();
  }

  String? resolveName(String? code) => resolveCountryByCode(code)?.name;

  String? resolveCode(String? country) => resolveCountryByName(country)?.code;

  Country? resolveCountryByName(String? name) => _data.firstWhereOrNull(
      (element) => element.name.toLowerCase() == name?.toLowerCase());

  Country? resolveCountryByCode(String? code) => _data.firstWhereOrNull(
      (element) => element.code.toLowerCase() == code?.toLowerCase());

  List<Country> get countries => _data;

  Map<String, String> get countryMap => Map<String, String>.fromIterable(countries, key: (el) => el.code, value: (el) => el.name);
}
