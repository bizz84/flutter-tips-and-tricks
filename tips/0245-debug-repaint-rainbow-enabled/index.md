# How to use debugRepaintRainbowEnabled

Did you know?

`debugRepaintRainbowEnabled` helps you discover widgets/areas that unexpectedly repaint in your app.

Here's how to set it 👇

![](245.gif)

<!--
import 'package:flutter/rendering.dart';

void main() {
  // Overlay a rotating set of colors when repainting layers in debug mode
  debugRepaintRainbowEnabled = true;
  runApp(const CarouselExampleApp());
}

Helps you find widgets that unexpectedly repaint in your app, so you can wrap them with RepaintBoundary.
-->

---

If you discover widgets that repaint when they shouldn't, wrap them with `RepaintBoundary`.

This can improve rendering performance, but only use it when necessary (`RepaintBoundary` has some extra CPU/memory cost).

Learn more here:

- [RepaintBoundary class](https://api.flutter.dev/flutter/widgets/RepaintBoundary-class.html)

---

| Previous | Next |
| -------- | ---- |
| [TextFormField Setup for Numeric Inputs](../0244-text-form-field-numeric/index.md) | |


<!-- TWITTER|https://x.com/biz84/status/1915327716053729791 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-debugrepaintrainbowenabled-activity-7321093982288031745-PA_b -->
<!-- BLUESKY|https://bsky.app/profile/codewithandrea.com/post/3lnkdeld36c2n -->
