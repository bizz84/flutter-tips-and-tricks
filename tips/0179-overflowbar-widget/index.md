# The OverflowBar widget

Did you know?

[OverflowBar](https://api.flutter.dev/flutter/widgets/OverflowBar-class.html) makes it easy to layout your widgets in a row unless they overflow the available horizontal space, in which case they're arranged as a column.

Both the horizontal and vertical spacing are customizable, as well as the overflow alignment. 👇

![](179.gif)

<!--

OverflowBar(
  // * Gap between children in the horizontal layout
  spacing: 8,
  // * Gap between children in the vertical layout (overflow)
  overflowSpacing: 4,
  // * Horizontal alignment of the children in the vertical layout
  overflowAlignment: OverflowBarAlignment.end,
  children: <Widget>[
    FilledButton(child: const Text('Option 1'), onPressed: () {}),
    FilledButton(child: const Text('Option 2'), onPressed: () {}),
    FilledButton(child: const Text('Option 3'), onPressed: () {}),
  ],
)

-->

---

Note that `OverflowBar` differs from the [`Wrap`](https://api.flutter.dev/flutter/widgets/Wrap-class.html) widget:

- when `Wrap` overflows, it keeps adding items horizontally.
- when `OverflowBar` overflows, it makes the entire layout vertical.

Different widgets for different use cases. 👍

---

For more info and sample code on how to use the `OverflowBar` widget, check the official docs:

- [OverflowBar class](https://api.flutter.dev/flutter/widgets/OverflowBar-class.html)

---

| Previous | Next |
| -------- | ---- |
| [Futures: await vs unawaited vs ignore](../0178-await-vs-unawaited-vs-ignore/index.md) |  |


<!-- TWITTER|https://x.com/biz84/status/1820812422245921275 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-overflowbar-makes-it-easy-activity-7226578354865381376--dvx -->