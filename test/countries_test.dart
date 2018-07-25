import 'package:alpha2_countries/countries.dart';
import 'package:test/test.dart';

void main() {
  group('Countries', () {
    test('resolves by code', () async {
      final countries = Countries();
      expect('Estonia', await countries.resolveName('EE'));
    });

    test('resolves by name', () async {
      final countries = Countries();
      expect('EE', await countries.resolveCode('Estonia'));
    });

    test('returns all countries', () async {
      final countries = Countries();
      expect(249, (await countries.countries).length);
    });
  });
}
