List<int> integersUntil(int n) {
  return List.generate(n, (index) => index + 1);
}

void main() {
  final list1 = integersUntil(1); // [1]
  print(list1.single); // ok, prints 1

  final list2 = integersUntil(3); // [1, 2, 3]
  print(list2.single); // Bad state: Too many elements
}
