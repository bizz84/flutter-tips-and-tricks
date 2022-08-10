import 'package:fpdart/fpdart.dart';

// parse a double from a string or return an error
Either<FormatException, double> parseNumber(String value) {
  try {
    return Either.right(double.parse(value));
  } on FormatException catch (e) {
    return Either.left(e);
  }
}

// call like this
final result = parseNumber('not-a-number');
// unwrap error/success with the fold method
result.fold(
  (error) => /* handle error */,
  (value) => /* handle success */,
);


// double.parse method signature in the Dart SDK
static double parse(String source) { ... }

try {
  // call like this
  final value = double.parse('not-a-number');
  // handle success
} on FormatException {
  // handle error
}
