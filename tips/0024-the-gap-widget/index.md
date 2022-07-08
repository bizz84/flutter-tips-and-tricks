# The Gap Widget

Did you know?

You can easily add gaps inside Flex widgets such as Columns and Rows or scrolling views.

Just install the `gap` package, and replace all those pesky SizedBoxes!

![](024-gap-widget.png)

---

You can find the package here:

https://pub.dev/packages/gap

Credit to [@lets4r](https://twitter.com/lets4r) for making it

---

This caused some confusion, so I'll try to clear it up.

There is NOTHING wrong with SizedBox.

Gap(x) is a valid substitute for both SizedBox(width: x) and SizedBox(height: x), because it works *along* the main axis of the parent widget.

---

Of course, it's a package so it adds an extra dependency to your project.

If you feel it's not justified, don't use it. Again, SizedBox is *just fine*.

If you like the shorter syntax and not having to specify width/height, go for it.

YOU choose.

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1485284738487226381) 🙏