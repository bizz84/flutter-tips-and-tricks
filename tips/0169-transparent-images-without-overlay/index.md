# Transparent Images Without Opacity

If you need to show a semi-transparent image, use `colorBlendMode` rather than adding a parent `Opacity` widget.

According to the docs, `Opacity` could apply the opacity to a group of widgets and therefore a costly offscreen buffer will be used.

![](169.png)

<!--
// Transparent Images Without Opacity

// ❌ Works, but inefficient
// Opacity uses a (costly) offscreen buffer for rendering ⚠️
Opacity(
  opacity: 0.5,
  child: Image.asset('assets/banner.png'),
)

// ✅ Better for performance
// When rendering images, you can achieve the same result with color and colorBlendMode
Image.asset(
  'assets/banner.png',
  color: Colors.white.withOpacity(0.5),
  colorBlendMode: BlendMode.modulate,
)
-->

---

To learn more about the `Opacity` widget and its alternatives, read the official docs:

- [Opacity class](https://api.flutter.dev/flutter/widgets/Opacity-class.html)

---

| Previous | Next |
| -------- | ---- |
| [Disposing fields to avoid memory leaks](../0168-dispose-to-avoid-memory-leaks/index.md) |  |


<!-- TWITTER|https://x.com/biz84/status/1806329277295583261 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_if-you-need-to-show-a-semi-transparent-image-activity-7212095137106006016-xdxL -->






