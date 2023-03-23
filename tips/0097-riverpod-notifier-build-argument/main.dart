@riverpod
class ItemController extends _$ItemController {
  @override
  FutureOr<void> build({required String itemId}) {
    // no-op
  }

  Future<void> deleteItem() async {
    final repository = ref.read(itemsRepositoryProvider);
    await repository.deleteJob(itemId: itemId);
  }
}
