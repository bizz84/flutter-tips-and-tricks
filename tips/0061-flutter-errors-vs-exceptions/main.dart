Future<Timezone> fetchTimezoneInfo(String tz) async {
  try {
    final uri = api.timezone(tz);
    final response = await http.get(uri);
    switch (response.statusCode) {
      case 200:
        final data = json.decode(response.body);
        return Timezone.fromJson(data);
      case 401:
        throw const APIException.invalidApiKey();
      case 404:
        throw const APIException.notFound();
      default:
        throw const APIException.unknown();
    }
  } on SocketException catch (_) {
    throw const APIException.connectionFailed();
  }
}

Future<void> placeOrder() async {
  // get current user
  final uid = authRepository.currentUser!.uid;
  // get cart for current user
  final cart = await cartRepository.fetchCart(uid);
  // create order object
  final order = Order.fromCart(userId: uid, cart: cart);
  // save it
  await ordersRepository.addOrder(uid, order);
  // empty cart when done
  await cartRepository.setCart(uid, const Cart());
}
