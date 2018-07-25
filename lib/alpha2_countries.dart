library alpha2_countries;

import 'dart:async';
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

  Completer<void> _load = Completer();

  Future<dynamic> _init() async {
    try {
      List<dynamic> list = json.decode(countriesJson);
      list.forEach((country) {
        _countriesByCode[country['code']] = country['name'];
        _countriesByName[country['name']] = country['code'];
      });
      _load.complete();
    } catch (e) {
      _load.completeError(e);
    }
  }

  Map<String, String> _countriesByCode = Map();
  Map<String, String> _countriesByName = Map();

  Future<String> resolveName(String code) async =>
      _load.future.then((_) => _countriesByCode[code]);

  Future<String> resolveCode(String country) =>
      _load.future.then((_) => _countriesByName[country]);

  Future<Map<String, String>> get countries async =>
      _load.future.then((_) => _countriesByCode);
}
