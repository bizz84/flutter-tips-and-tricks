import 'package:flutter_test/flutter_test.dart';

class Point {
  const Point({required this.x, required this.y});
  final int x;
  final int y;

  factory Point.fromJson(Map<String, int> json) {
    return Point(
      x: json['x'] as int,
      y: json['y'] as int,
    );
  }
}

void main() {
  ({int x, int y}) fromJson(Map<String, int> json) {
    return (x: json['x'] as int, y: json['y'] as int);
  }

  test('records json equality', () {
    final ({int x, int y}) actual = fromJson({'x': 1, 'y': 2});
    const ({int x, int y}) expected = (x: 1, y: 2);
    expect(actual, equals(expected)); // success
  });

  test('objects json equality', () {
    final actual = Point.fromJson({'x': 1, 'y': 2});
    const expected = Point(x: 1, y: 2);
    expect(actual, equals(expected)); // failure
  });
}
