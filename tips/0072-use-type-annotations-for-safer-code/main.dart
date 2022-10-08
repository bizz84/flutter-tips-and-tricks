void main() {
  // inferred type: List<dynamic>
  final allInts = [1, 6, 2.2, 3, 8.12, 4, 9, 'string'];

// inferred type: List<int>
  final allIntsForSure = <int>[1, 6, 2.2, 3, 8.12, 4, 9, 'string'];

  allInts.add(5);
  allInts.add(5.0);
  allInts.add('I can add anything!');
  allInts.add(true);
  allIntsForSure.add(5);
  allIntsForSure.add(5.0);
  allIntsForSure.add('Will not compile!');
}
