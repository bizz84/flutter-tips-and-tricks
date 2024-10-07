# Control the Code Generation Order

Did you know?

If you're using multiple code generators that depend on each other, build_runner may fail.

To fix this, you can enforce an explicit code generation order in your `build.yaml` file. 👇

![](193.png)

<!--

If you're using multiple code generators that depend on each other, build_runner may fail.

To fix this, you can enforce an explicit code generation order in your build.yaml file. 👇

global_options:
  freezed:
    runs_before:
      - json_serializable
  json_serializable:
    runs_before:
      - retrofit_generator

As a result, the generators will run in this order:

1. freezed
2. json_serializable
3. retrofit_generator

-->

---

For more techniques about effective codebase maintenance, read my ultimate guide about code generation:

- [Code Generation with Dart & Flutter: The Ultimate Guide](https://codewithandrea.com/articles/dart-flutter-code-generation/)

---

| Previous | Next |
| -------- | ---- |
| [Async Stream Initialization with async*](../0192-async-stream-initialization/index.md) | [Generate Commit Message with Copilot](../0194-copilot-generate-commit-messages/index.md) |

<!-- TWITTER|https://x.com/biz84/status/1843232583980839286 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-if-youre-using-multiple-code-activity-7248998462887780352-nNmg -->

