# The CarouselView Widget

Did you know?

Since Flutter 3.24, a new `CarouselView` widget is available.

Here's how to use it:
- Limit its height with a `ConstrainedBox`
- Set the children size with `itemExtent` and `shrinkExtent`
- Use any widgets as children

Easy peasy! 🚀

![](181.gif)

<!--
ConstrainedBox(
  constraints: const BoxConstraints(maxHeight: 180),
  child: CarouselView(
    itemExtent: 320,
    shrinkExtent: 200,
    children: List<Widget>.generate(5, (int index) {
      return Image.asset(assets[index % 5]);
    }),
  ),
)
-->


---

For more info and sample code, read the official docs:

- [CarouselView class](https://api.flutter.dev/flutter/material/CarouselView-class.html)

---

| Previous | Next |
| -------- | ---- |
| [The dart pub unpack command](../0180-dart-pub-unpack/index.md) |  |


<!-- TWITTER|https://x.com/biz84/status/1821445042336067923 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-since-flutter-324-a-new-activity-7227211239964225536-dGWg -->

