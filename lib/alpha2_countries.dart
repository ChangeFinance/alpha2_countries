library alpha2_countries;

import 'dart:convert';

import 'package:alpha2_countries/alpha2_countries_data.dart';

class Countries {
  static final Countries _singleton = new Countries._internal();

  factory Countries() {
    return _singleton;
  }

  Countries._internal() {
    _init();
  }

  void _init() {
    List<dynamic> list = json.decode(countriesJson);
    list.forEach((country) {
      String code = country['code'];
      String name = country['name'];
      _countriesByCode[code.toLowerCase()] = name;
      _countriesByName[name.toLowerCase()] = code;
    });
  }

  Map<String, String> _countriesByCode = Map();
  Map<String, String> _countriesByName = Map();

  String? resolveName(String code) => _countriesByCode[code.toLowerCase()];

  String? resolveCode(String country) => _countriesByName[country.toLowerCase()];

  Map<String, String> get countries => _countriesByCode;
}
