# Firebase Init with Multiple Flavors

Did you know?

If your Flutter app has multiple flavors, you can put all the Firebase initialization logic in one file.

How? Define aliases for the config files and switch between them based on the `appFlavor` constant. 👌

Then, simply call `initializeFirebaseApp()` from `main()`.

![](201.png)

<!--

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ship_app/firebase_options_prod.dart' as prod;
import 'package:flutter_ship_app/firebase_options_stg.dart' as stg;
import 'package:flutter_ship_app/firebase_options_dev.dart' as dev;

Future<void> initializeFirebaseApp() async {
  final FirebaseOptions firebaseOptions;
  if (kIsWeb) {
    // * Always use prod for Flutter web builds
    firebaseOptions = prod.DefaultFirebaseOptions.currentPlatform;
  } else {
    // * On all other platforms, switch on the appFlavor
    firebaseOptions = switch (appFlavor) {
      'prod' => prod.DefaultFirebaseOptions.currentPlatform,
      'stg' => stg.DefaultFirebaseOptions.currentPlatform,
      'dev' => dev.DefaultFirebaseOptions.currentPlatform,
      _ => throw UnsupportedError('Invalid flavor: $appFlavor'),
    };
  }
  await Firebase.initializeApp(options: firebaseOptions);
}

-->

---

The benefit of this approach is that you only need a single entry point (`main.dart`), rather than one for each flavor.

Note: Flutter web doesn't support flavors, so you have two options:

- pick one by default (e.g. `prod`)
- use a separate `--dart-define` and switch based on that.

---

My latest course covers flavors and environments in great depth.

To learn more, check it out here:

- [Flutter in Production](https://codewithandrea.com/courses/flutter-in-production/)

---

| Previous | Next |
| -------- | ---- |
| [Fixing Build Issues - Nuclear Option 💣](../0200-fixing-build-issues-nuclear-option/index.md) |  |

<!-- TWITTER|https://x.com/biz84/status/1846846848935367123 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-if-your-flutter-app-has-multiple-activity-7252612939768041473-A7er -->





