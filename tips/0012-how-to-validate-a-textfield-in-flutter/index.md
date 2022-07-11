# How to Validate a TextField in Flutter

How do you validate a `TextField` **as the user types** in Flutter?

Let's figure it out. 🧵

(hint: we'll use an `AnimatedBuilder`)

![](https://codewithandrea.com/articles/flutter-text-field-form-validation/images/text-field-validation.gif)

---

Let's start with a `StatefulWidget` that contains a `TextField` and an `ElevatedButton`.

This just shows the UI but doesn't do any validation.

![](013_textfield_elevatedbutton.png)

---

Next, let's create a `TextEditingController`, dispose it as needed, and pass it to the `TextField`.

![](013_add_texteditingcontroller.png)

---

To validate the text, we can add:

- an `errorText` getter variable
- pass it to the `TextField`
- use it to enable/disable our button with some conditional logic

![](013_add_errortext.png)

---

But if we try this now, both the `TextField` error hint and the button UI don't update as the text changes.

Why? 🧐

![](https://codewithandrea.com/articles/flutter-text-field-form-validation/images/text-field-not-updating.gif)

---

We forgot to tell Flutter to rebuild our widget when the text changes!

This *could* be fixed by setting a local state variable with a call to `setState()` in the `TextField` `onChanged` callback.

![](013_onchanged_setstate.png)

---

But we don't even need a local state variable in the first place because `TextEditingController` already contains the text value.

So how can we rebuild the widget when the text value changes?

---

We can wrap our widgets with an `AnimatedBuilder` and pass our `TextEditingController` to the animation argument:

![](013_animated_builder.png)

---

This works because `AnimatedBuilder` takes an animation argument of type `Listenable`.

And `TextEditingController` extends `ValueNotifier`, which extends `ChangeNotifier`, which implements `Listenable`.

Here's how these classes are implemented in the Flutter SDK:

![](013_valuenotifier_changenotifier.png)

---

This means that we can pass instances of any of these classes to `AnimatedBuilder`.

And we can now validate our text on the fly:

![](https://codewithandrea.com/articles/flutter-text-field-form-validation/images/text-field-validation.gif)

---

I have just written an article that covers all these details and includes all the source code.

Feel free to use this as reference for your projects.

And if you liked this, follow me for more Flutter tips: [@biz84](https://twitter.com/biz84).

Happy coding!

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1443521715800354816) 🙏

### Also published on codewithandrea.com 👇

- [Flutter TextField Validation: How to work with TextEditingController, Form, and TextFormField](https://codewithandrea.com/articles/flutter-text-field-form-validation/)


---

| Previous | Next |
| -------- | ---- |
| [How to Style an `ElevatedButton` in Flutter](../0011-how-to-style-an-elevatedbutton-in-flutter/index.md) | [Responsive Flutter card layout with `SizedBox` & `Center`](../0013-responsive-flutter-card-layout-with-sizedbox-center/index.md) |