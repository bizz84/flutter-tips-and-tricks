// just an example (this provider could fetch some data from a remote instead)
final value1Provider = FutureProvider<int>((ref) => Future.value(1));
// another example provider
final value2Provider = FutureProvider<int>((ref) => Future.value(2));

final resultProvider = FutureProvider<int>((ref) async {
  final a = await ref.watch(value1Provider.future);
  final b = await ref.watch(value2Provider.future);
  return a + b;
});

final asyncProvider = FutureProvider<int>((ref) async {
  final a = ref.watch(futureProvider1);
  final b = ref.watch(futureProvider2);
  return a + b;
});
