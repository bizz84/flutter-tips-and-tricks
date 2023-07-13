// some JSON to be parsed
const shapesJson = [
  {
    'type': 'square',
    'side': 10.0,
  },
  {
    'type': 'circle',
    'radius': 5.0,
  },
];

// some classes to represent the JSON data
sealed class Shape {
  const Shape();

  factory Shape.fromJsonOld(Map<String, dynamic> json) {
    final type = json['type'] as String;
    if (type == 'square') {
      return Square(json['side'] as double);
    } else if (type == 'circle') {
      return Circle(json['radius'] as double);
    } else {
      throw FormatException('Invalid JSON: $json');
    }
  }

  factory Shape.fromJsonNew(Map<String, dynamic> json) {
    return switch (json) {
      {'type': 'square', 'side': double side} => Square(side),
      {'type': 'circle', 'radius': double radius} => Circle(radius),
      _ => throw FormatException('Invalid JSON: $json'),
    };
  }
}

class Square extends Shape {
  const Square(this.side);
  final double side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;
}
