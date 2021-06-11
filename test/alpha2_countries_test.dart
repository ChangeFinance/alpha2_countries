import 'package:alpha2_countries/alpha2_countries.dart';
import 'package:test/test.dart';

void main() {
  group('Countries', () {
    test('resolves by code', () {
      final countries = Countries();
      expect('Estonia', countries.resolveName('EE'));
    });

    test('resolves by name', () {
      final countries = Countries();
      expect('EE', countries.resolveCode('Estonia'));
    });

    test('resolving by name is case insensitive', () {
      final countries = Countries();
      expect('EE', countries.resolveCode('estonia'));
    });

    test('resolving by code is case insensitive', () {
      final countries = Countries();
      expect('Estonia', countries.resolveName('ee'));
    });

    test('returns all countries', () {
      final countries = Countries();
      expect(249, (countries.countries).length);
    });

    test('returns code to name map', () {
      final countryMap = Countries().countryMap;
      expect(249, countryMap.entries.length);
      expect('Albania', countryMap['AL']);
    });
  });
}
