# Preserve Trailing Commas in Dart 3.8

Did you know?

Dart 3.8 introduces a new formatting option to preserve trailing commas.

Enable this to override the default formatter behaviour (introduced in Dart 3.7), which is to remove trailing commas when parameter lists fit within the max page width.

![](253.png)

<!--
# New formatting option
# analysis_options.yaml
formatter:
  trailing_commas: preserve

# Available in Dart 3.8
# pubspec.yaml
environment:
  sdk: ^3.8.0

Enable this to override the default formatter behaviour, which removes trailing commas when parameter lists fit within the max page width.

Example: adding trailing comma + dart format

Default behavior: remove trailing comma, inline if it fits within page width

const WelcomeAppIntro({super.key, this.onNewApp});

New option: preserve trailing comma and format over multiple lines

const WelcomeAppIntro({
  super.key,
  this.onNewApp,
});
-->

---

Some other formatter configuration options are available.

For all the details, read this (updated) article:

- [How to Configure the Updated Code Formatter in Dart 3.8](https://codewithandrea.com/articles/updated-formatter-dart-3-8/)

---

| Previous | Next |
| -------- | ---- |
| [Null-aware elements in Dart 3.8](../0252-null-aware-elements-dart-3.8/index.md) | |


<!-- TWITTER|https://x.com/biz84/status/1925126563588194639 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-dart-38-introduces-a-new-activity-7330892354045804547-c-pC -->
<!-- BLUESKY|https://bsky.app/profile/codewithandrea.com/post/3lpod6unsd224 -->