/// 1. Provider

final dateFormatterProvider = Provider<DateFormat>((ref) {
  /// Date formatter to be used in the app.
  return DateFormat.MMMEd();
});

class SomeWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateFormatted = ref.watch(dateFormatterProvider).format(someDate);
    return Text(dateFormatted);
  }
}


/// 2. StateProvider

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

class CounterWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    return ElevatedButton(
      child: Text('Value: $counter'),
      onPressed: () => ref.read(counterStateProvider.notifier).state++,
    );
  }
}

/// 3. StateNotifierProvider

class AuthController extends StateNotifier<AsyncValue<void>> {
  AuthController(this.ref) : super(const AsyncData(null));
  final Ref ref;

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(authRepositoryProvider).signOut()
    );
  }
}

final authControllerProvider =
  StateNotifierProvider<
    AuthController, AsyncValue<void>>((ref) {
  return AuthController(ref);
});

Widget build(BuildContext context, WidgetRef ref) {
  final state = ref.watch(authControllerProvider);
  return ElevatedButton(
    child: const Text('Logout'),
    onPressed: state.isLoading
      ? null
      : () => ref.read(authControllerProvider.notifier).signOut(),
  );
}

/// 4. FutureProvider

final weatherFutureProvider = FutureProvider.autoDispose.family<Weather, String>((ref, city) {
  return ref.watch(weatherRepositoryProvider).getWeather(city: city);
});

Widget build(BuildContext context, WidgetRef ref) {
  AsyncValue<Weather> weather = ref.watch(weatherFutureProvider('London');
  return config.when(
    loading: () => const CircularProgressIndicator(),
    error: (err, stack) => Text('Error: $err'),
    data: (weather) => Text(weather.toString()),
  );
}

/// 5. StreamProvider

final authStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges()
});

Widget build(BuildContext context, WidgetRef ref) {
  final authState = ref.watch(authStateChangesProvider);
  return authState.when(
    data: (user) => Text(user.toString()),
    loading: () => const CircularProgressIndicator(),
    error: (err, stack) => Text('Error: $err'),
  );
}

/// 6. ChangeNotifierProvider

class AuthController extends ChangeNotifier {
  User? user;
  bool get isSignedIn => user != null;

  Future<void> signOut() {
    user = null;
    notifyListeners();
  }
}

final authControllerProvider = ChangeNotifierProvider<AuthController>((ref) {
  return AuthController();
});

Widget build(BuildContext context, WidgetRef ref) {
  return ElevatedButton(
    onPressed: () => ref.read(authControllerProvider).signOut(),
    child: const Text('Logout'),
  );
}



