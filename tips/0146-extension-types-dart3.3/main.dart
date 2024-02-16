extension IntX on int {
  void showValue() {
    print('Value is $this');
  }
}

void main() {
  final i = 42;
  i.showValue(); // 'Value is 42'
  print(i - 2); // 40
}

extension type Wrapper(int i) {
  void showValue() {
    print('Value is $i');
  }
}

void main2() {
  final w = Wrapper(42);
  w.showValue(); // Prints 'Value is 42'
  // ! The operator '-' isn't defined for the type 'Wrapper'.
  print(w - 2);
}
