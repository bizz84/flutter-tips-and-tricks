# Using `context.mounted` in Flutter 3.7

Up until recently, it wasn't possible to check if a `StatelessWidget` was mounted in Flutter.

But since Flutter 3.7, `BuildContext` itself has a `mounted` property! 🎉

This makes it easy to check if **any** widget is mounted.

That's a great quality-of-life improvement. 👌

![](090.png)

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1618176831764430848) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Using `serverTimestamp()` in Firestore](../0089-server-timestamp/index.md) | [Got linter issues? Use `dart fix --apply`](../0091-dart-fix-apply/index.md) |