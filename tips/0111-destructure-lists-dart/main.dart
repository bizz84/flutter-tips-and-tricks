void valid() {
  final [first, ..., last] = [1, 2, 3, 4, 5];
  print(first); // 1
  print(last); // 5
}

void invalid() {
  // Unhandled exception:
  // Bad state: Pattern matching error
  final [first, second] = [1];
  print(first);
  print(second);
}
