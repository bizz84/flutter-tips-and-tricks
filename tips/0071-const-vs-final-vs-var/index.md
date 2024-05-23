# Prefer const over final over var

When declaring variables in Dart, prefer `const` over `final` over `var`:

- `const` is for hardcoded, **compile-time constants**
- `final` is for read-only variables that are **set just once**
- `var` is for variables that are **set more than once**

The static analyzer will help you choose wisely. 🙂

![](071.png)

<!--
void main() {
  const favourite = 'I like pizza with tomatoes';
  final newFavourite = favourite.replaceAll('pizza', 'pasta');
  var totalSpaces = 0;
  for (var i = 0; i < newFavourite.length; i++) {
    final c = newFavourite[i];
    if (c == ' ') {
      totalSpaces++;
    }
    print(' Counted $totalSpaces spaces ');
  }
}
-->

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1577285912253308928) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Flutter app localization in 5 min](../0070-localizations/index.md) | [Use type annotations for safer code](../0072-use-type-annotations-for-safer-code/index.md) |