import 'package:alpha2_countries/alpha2_countries.dart';

final countries = Countries();
final code = countries.resolveCode('Estonia');
final name = countries.resolveName('EE');