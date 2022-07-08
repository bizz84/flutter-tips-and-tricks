# How to create a Flutter `GridView` with content-sized items

Have you ever tried to build a GridView with custom items, but you've been unable to size them correctly as the width changes?

In such cases, bottom overflows are very common.

Let's see how to fix this: 🧵

![](019-cover.png)

---

We could try to implement the desired layout with a `GridView`, and set the `crossAxisCount`, `mainAxisSpacing`, `crossAxisSpacing`, and `childAspectRatio` as needed:

![](019_item_card_grid_view.png)

----

But this can only work for a given window width.

If we resize the window, the content inside the items will become taller or shorter.

What we need is **content-sized** items.

And `GridView` won't work here because it has a **fixed** aspect ratio that applies to all children.

------

What we need is a layout algorithm that can work out how tall each item should be as the width changes.

This algorithm should calculate the height of the tallest item on each row, and apply that to all items in the row.

This means that the size of any given item on the grid **depends on the size of other items in the grid**.

----

Luckily, this wonderful package is perfect for our use case:

https://pub.dev/packages/flutter_layout_grid

It is based on the CSS Grid Layout spec, and is optimized for complex user interface design.

--------

Once installed, we can use it to define **content-sized** items by using `auto`:

![](019_item_card_layout_grid.png)

-------

That's it! We now have a **responsive** grid layout with **content-sized** items.

And this only takes a few lines of code thanks to `flutter_layout_grid`!

![](019-end.png)

--------

Want more Flutter tips like this?

Then just follow me: [@biz84](https://twitter.com/biz84)

I'll share a complete article with more details soon. 👇

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1463459311208775686) 🙏

### Also published on codewithandrea.com 👇

- [How to create a Flutter GridView with content-sized items](https://codewithandrea.com/articles/flutter-layout-grid-content-sized-items/)