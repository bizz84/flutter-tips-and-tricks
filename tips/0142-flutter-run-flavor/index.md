# Launching your Flutter app with flavors

Did you know?

When you run your Flutter app, you can add a `--flavor` argument.

To get the flavor at runtime, import `services.dart` and read the `appFlavor` global variable.

This will return a string that you can map to a type-safe enum.

![](142.png)

---

Note that some platform-specific configuration is needed:

- on iOS and macOS, you need to set up some custom schemes and bundle IDs
- on Android, you need to add some `productFlavors` to the build.gradle file

Check this guide for all the details:

- [Create flavors of a Flutter app](https://docs.flutter.dev/deployment/flavors)

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1750486116581417103) 🙏

---

| Previous | Next |
| -------- | ---- |
| [⚠️ debugPrint prints in release mode ⚠️](../0141-dont-use-debug-print/index.md) | [We need to talk about FlutterFlow!](../0143-we-need-to-talk-about-flutterflow/index.md) |
