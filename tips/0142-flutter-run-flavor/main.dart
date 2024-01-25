enum Flavor { dev, stg, prod }

Flavor getFlavor() {
  const flavorStr = String.fromEnvironment('FLUTTER_APP_FLAVOR');
  return switch (flavorStr) {
    'dev' => Flavor.dev,
    'stg' => Flavor.stg,
    'prod' => Flavor.prod,
    _ => throw UnsupportedError('Unsupported flavor: $flavorStr'),
  };
}

// run with
// flutter run --flavor dev
