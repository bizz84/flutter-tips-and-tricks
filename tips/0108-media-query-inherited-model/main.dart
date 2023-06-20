class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // old way ❌
    MediaQuery.of(context).size;
    MediaQuery.of(context).padding;
    MediaQuery.of(context).orientation;

    // new way ✅
    MediaQuery.sizeOf(context);
    MediaQuery.paddingOf(context);
    MediaQuery.orientationOf(context);
  }
}
