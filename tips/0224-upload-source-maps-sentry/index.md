# Uploading the Source Maps to Sentry

Did you know? 

If you enable code obfuscation in your Flutter release builds, the stack traces will be unreadable in the Sentry crash reports.

To fix this:
- Generate the source maps with `--split-debug-info`
- Use the [sentry_dart_plugin](https://pub.dev/packages/sentry_dart_plugin) package to upload them
- Automate the process with CI/CD (recommended)

![](224.png)

<!--

Uploading the Source Maps to Sentry

Tools like Sentry are essential for error monitoring in production. But if you’ve enabled code obfuscation in your release builds, the stack traces will be unreadable. To fix this:

- Generate the source maps with the --split-debug-info flag
- Use sentry_dart_plugin package to upload them

# 1. Install and configure the Sentry Dart Plugin
dev_dependencies:
  sentry_dart_plugin:

sentry:
  upload_debug_symbols: true
  project: <your-sentry-project-name>
  org: <your-sentry-org-name>
  auth_token: <your-sentry-auth-token>
  symbols_path: build

# 2. Build the IPA or appbundle with these flags
flutter build ipa --obfuscate --split-debug-info=build

# 3. Run the plugin to upload the source maps
dart run sentry_dart_plugin

-->

---

To learn more about code obfuscation and how to upload the source maps to Sentry, check these links:

- [Obfuscate Dart code](https://docs.flutter.dev/deployment/obfuscate)
- [sentry_dart_plugin package](https://pub.dev/packages/sentry_dart_plugin)

---

For a more complete guide showing how everything fits together (error monitoring, app releases, and CI/CD automation), check my latest course:

- [Flutter in Production](https://codewithandrea.com/courses/flutter-in-production/)

---

| Previous | Next |
| -------- | ---- |
| [SSH Access on Codemagic Builds](../0223-ssh-access-codemagic/index.md) | [The debugFillProperties Method](../0225-debug-fill-properties/index.md) |


<!-- TWITTER|https://x.com/biz84/status/1881373630313218480 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-if-you-enable-code-obfuscation-activity-7287140106602201091-H-Zr  -->
<!-- BLUESKY|https://bsky.app/profile/codewithandrea.com/post/3lg6q4nkivs2q -->

