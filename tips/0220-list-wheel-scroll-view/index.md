# The ListWheelScrollView Widget

Did you know?

If you need to select between a small list of values but have limited vertical space, you can use a `ListWheelScrollView`. 🎯

Pro Tip: use `FixedExtentScrollPhysics` to snap to the nearest item when the user stops scrolling. 👍

![](220.gif)

<!--

ListWheelScrollView.useDelegate(
  // Size of each item in the main axis
  itemExtent: 100,
  // Ratio between the diameter and the viewport height
  diameterRatio: 1.5,
  // Controller to control the scroll position
  controller: FixedExtentScrollController(
    initialItem: selectedIndex,
  ),
  // Snap to nearest item when the user stops scrolling
  physics: const FixedExtentScrollPhysics(),
  // Callback when the user selects an item
  onSelectedItemChanged: onSelectedItemChanged,
  // List of items to display
  childDelegate: ListWheelChildBuilderDelegate(
    childCount: timezones.length,
    builder: (context, index) => TimeZoneDisplayCard(
      timezone: timezones[index],
      isSelected: selectedIndex == index,
    ),
  ),
)

-->

How to use:

- call the regular `ListWheelScrollView` constructor and pass a list of children.
- call `ListWheelScrollView.useDelegate` and pass a `ListWheelChildDelegate`.

For all the details, check the official docs:

- [ListWheelScrollView class](https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html)


---

| Previous | Next |
| -------- | ---- |
| [Color API Deprecations in Flutter 3.27](../0219-color-deprecations-flutter-3.27/index.md) | [Using Stack and FractionallySizedBox](../0221-stack-fractionally-sized-box/index.md) |


<!-- TWITTER|https://x.com/biz84/status/1870061289114087814 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-if-you-need-to-select-between-activity-7275827511219945472-cYEH -->
<!-- BLUESKY|https://bsky.app/profile/codewithandrea.com/post/3ldqaaejlx22e -->