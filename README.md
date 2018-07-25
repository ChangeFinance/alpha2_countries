# Alpha 2 countries

ISO 3166-1 alpha-2 country codes for Dart. Based on [alpha2-countries](https://github.com/slatkovic/alpha2-countries) npm package by [@slatkovic](https://github.com/slatkovic). 

## Usage

```dart
    final countries = Countries();
    final code = await countries.resolveCode('Estonia');
    final name = await countries.resolveName('EE');
```

