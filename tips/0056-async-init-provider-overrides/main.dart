class SembastCartRepository {
  SembastCartRepository(this.db);
  final Database db;

  static Future<SembastCartRepository> withDefaultDB() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final db = databaseFactoryIo.openDatabase('${appDocDir.path}/default.db');
    return SembastCartRepository(db);
  }
}

final cartRepositoryProvider = Provider<SembastCartRepository>((ref) {
  // can't return a SembastCartRepository
  // because the initializer is async
  // so we throw an error instead
  throw UnimplementedError();
});

// some class that depends on the repository
class CartService {
  CartService(this.cartRepository);
  final SembastCartRepository cartRepository;

  void doSomething() {}
}

final cartServiceProvider = Provider<CartService>((ref) {
  // note: we can read this synchronously
  final cartRepository = ref.watch(cartRepositoryProvider);
  return CartService(cartRepository);
});
