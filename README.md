# Alpha 2 countries

[![CircleCI](https://circleci.com/gh/ChangeFinance/alpha2_countries.svg?style=svg)](https://circleci.com/gh/ChangeFinance/alpha2_countries)
[![Pub](https://img.shields.io/badge/Pub-1.0.1-orange.svg)](https://pub.dartlang.org/packages/alpha2_countries)


ISO 3166-1 alpha-2 country codes for Dart. Based on [alpha2-countries](https://github.com/slatkovic/alpha2-countries) npm package by [@slatkovic](https://github.com/slatkovic). 

## Usage

```dart
    final countries = Countries();
    final code = await countries.resolveCode('Estonia');
    final name = await countries.resolveName('EE');
```

