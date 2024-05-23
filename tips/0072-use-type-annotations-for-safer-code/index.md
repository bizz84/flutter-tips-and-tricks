# Use Type Annotations for Safer Code

The Dart analyzer can infer types for fields, methods, variables, and more.

But sometimes it needs a little help and you can use type annotations to ensure variables are of the intended type.

This way, your code won't compile if you use types incorrectly.

![](072.png)

<!--
// inferred type: List<dynamic>
final allInts = [1, 6, 2.2, 3, 8.12, 4, 9, 'string'];

// inferred type: List<int>
final allIntsForSure = <int>[1, 6, 2.2, 3, 8.12, 4, 9, 'string'];

allInts.add(5);
allInts.add(5.0);
allInts.add('I can add anything!');
allInts.add(true);
allIntsForSure.add(5);
allIntsForSure.add(5.0);
allIntsForSure.add('Will not compile!');
-->

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1577928394762846208) 🙏

| Previous | Next |
| -------- | ---- |
| [Const vs final vs var](../0071-const-vs-final-vs-var/index.md) | [How to define type aliases in Dart](../0073-enhance-readability-with-typdef/index.md) |