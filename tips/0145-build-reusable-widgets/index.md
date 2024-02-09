# Top tip for Flutter developers: write reusable widgets!

It will save you a ton of time in the future (I promise)! 👍

Quick tips:

- Build dedicated widget classes for buttons, texts, and inputs—they're your basic building blocks and styling heroes.
- Pass data with properties or a neat data class.
- For user interactions, rely on callbacks to the parent widget.

Benefits:

- Pure widgets = no side effects (no navigation, data access, or business logic).
- They're a breeze to use in different features and apps (keep improving them as needed).
- Easy to compose into more specialized widgets.

But where should you handle navigation, data fetching, mutations, etc.? 🤔

- Keep it simple: avoid prop-drilling and propagating state up too many levels.
- Remember separation of concerns. UI widgets stay pure, while controllers and providers manage the heavy lifting.

👉 Bottom line: write reusable, pure widgets.

Keep doing it, and you’ll end up with a nice catalog of widgets that will save you time and hassle!

Happy coding!

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1755923275048247789) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Scheduling microtasks in Dart](../0144-scheduling-microtasks/index.md) |  |

