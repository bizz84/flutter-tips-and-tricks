# Loading UI with Shimmer effect

Want something nicer than a `CircularProgressIndicator` for your loading UI?

That's easy: just add the [Shimmer](https://pub.dev/packages/shimmer) package to your app and configure a custom shimmer effect.

Then, show the shimmer UI while the data is loading and the real UI when the data is ready. 👌

![](154.gif)

<!--
A code snippet for showing some loading UI with a Shimmer effect

Shimmer.fromColors(
    baseColor: Colors.grey.shade300,
    highlightColor: Colors.grey.shade100,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(height: 22.0, color: Colors.white),
        const SizedBox(height: 12.0), // some spacing
        const AspectRatio(
          aspectRatio: 16.0 / 9.0,
          child: ColoredBox(color: Colors.white),
        )
      ],
    ))
-->

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1772621866915508285) 

---

| Previous | Next |
| -------- | ---- |
| [Zoom an image with InteractiveViewer](../0153-interactive-viewer/index.md) | [Null-aware spread operator (...?)](../0155-null-aware-spread-operator/index.md) |

<!-- TWITTER|https://twitter.com/biz84/status/1772621866915508285 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_want-something-nicer-than-a-circularprogressindicator-activity-7178387635298521089-nvcc -->
