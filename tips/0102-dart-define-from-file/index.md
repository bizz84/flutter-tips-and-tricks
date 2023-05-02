# Storing API keys in a JSON file

Did you know?

Since Flutter 3.7, you can store all your API keys inside a JSON file and pass it to a new `--dart-define-from-file` flag from the command line.

(you'll want to add that JSON file to .gitignore to avoid exposing your sensitive keys)

![](102.1.png)

---

Then in your Dart code, simply use `String.fromEnvironment` to retrieve your keys and use them as needed. 👇

![](102.2.png)

---

To learn about different techniques and best practices for storing API keys in Flutter, check out my (updated) article: 👇

- [How to Store API Keys in Flutter: --dart-define vs .env files](https://codewithandrea.com/articles/flutter-api-keys-dart-define-env-files/)

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1653276293318729737) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Backend-agnostic Flutter apps](../0101-backend-agnostic/index.md) | [Firebase Auth flow in 5 minutes](../0103-simple-auth-firebase-ui/index.md) |
