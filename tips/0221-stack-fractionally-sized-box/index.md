# Using Stack and FractionallySizedBox

Did you know?

Flutter offers many ways to create custom layouts that can’t be expressed with `Row` and `Column`. 👍

For example, here's how to overlay multiple widgets inside a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) and constrain their size and position with [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) and [FractionallySizedBox](https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html). 👇

![](221.png)

<!--

const n = 4;
// * Aspect ratio = 1 yields a square
return AspectRatio(
  aspectRatio: 1,
  // * Stack the squares on top of each other
  child: Stack(
    // * Generate n squares
    children: List.generate(n, (index) {
      // * Material colors have shades from 100 to 900
      final color = Colors.indigo[(index + 2) * 100]!;
      // * Fill the entire surface
      return Positioned.fill(
        // * Size child to a fraction of the available space
        child: FractionallySizedBox(
          // * Pick width and height between 0 and 1
          widthFactor: 1 - index / n,
          heightFactor: 1 - index / n,
          // * Choose the alignment of the child
          alignment: Alignment.topRight,
          // * Just a colored box
          child: ColoredBox(color: color),
        ),
      );
    }),
  ),
);

-->

---

### Bonus Challenge

Try to implement a chess board layout using `Stack` and `FractionallySizedBox` by completing this challenge:

- [Challenge: Chess Board](https://pro.codewithandrea.com/flutter-ui-challenges/006-chess-board/01-intro)

---

| Previous | Next |
| -------- | ---- |
| [The ListWheelScrollView Widget](../0220-list-wheel-scroll-view/index.md) | [Move Declaration to File (VSCode assist)](../0222-move-to-file-vscode-assist/index.md) |


<!-- TWITTER|https://x.com/biz84/status/1876564889537311226 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-flutter-offers-many-ways-to-activity-7282330843241447426-cDRF -->
<!-- BLUESKY|https://bsky.app/profile/codewithandrea.com/post/3lf5eby24zc2r -->


