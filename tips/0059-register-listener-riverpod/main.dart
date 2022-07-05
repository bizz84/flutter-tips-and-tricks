// Before (without Riverpod)
void main() async {
  // Normal initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // register a listener to process incoming links
  FirebaseDynamicLinks.instance.onLink.listen((link) {
    // TODO: Handle link
  });
  // run the app
  runApp(const MyApp());
}

// After (with Riverpod)
final onDynamicLinkProvider = StreamProvider<PendingDynamicLinkData>((ref) {
  // For simplicity, here we use FirebaseDynamicLinks directly.
  // On production codebases we would get the stream from a DynamicLinksRepository.
  return FirebaseDynamicLinks.instance.onLink;
});

class DynamicLinksService {
  DynamicLinksService(this.ref) {
    ref.listen<AsyncValue<PendingDynamicLinkData>>(onDynamicLinkProvider,
        (previous, next) {
      final linkData = next.value;
      if (linkData != null) {
        debugPrint(linkData.toString());
        // TODO: Handle linkData
      }
    });
  }
  final Ref ref;
}

final dynamicLinksServiceProvider = Provider<DynamicLinksService>((ref) {
  return DynamicLinksService(ref);
});

void main() async {
  // Normal initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // 1. Create a ProviderContainer
  final container = ProviderContainer();
  // 2. Use it to read the provider 
  container.read(dynamicLinksServiceProvider);
  // 3. Pass the container to an UncontrolledProviderScope and run the app
  runApp(UncontrolledProviderScope(
    container: container,
    child: const MyApp(),
  ));
}


final container = ProviderContainer(
  overrides: [], // add any overrides here
);
container.read(authServiceProvider);
container.read(dynamicLinksServiceProvider);
container.read(messagingServiceProvider);
runApp(UncontrolledProviderScope(
  container: container,
  child: const MyApp(),
));