// Given this class:

class CheckoutSession {
  final int amount;
  final String currency;
}

// You can use the Quick Fix option called "Create constructor for final fields, required named".

// And VSCode will generate this for you:

class CheckoutSession {
  final int amount;
  final String currency;

  CheckoutSession({required this.amount, required this.currency});
}
