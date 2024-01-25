import 'package:flutter/services.dart';

enum Flavor { dev, stg, prod }

Flavor getFlavor() => switch (appFlavor) {
      'dev' => Flavor.dev,
      'stg' => Flavor.stg,
      'prod' => Flavor.prod,
      _ => throw UnsupportedError('Unsupported flavor: $appFlavor'),
    };

// run with
// flutter run --flavor dev
