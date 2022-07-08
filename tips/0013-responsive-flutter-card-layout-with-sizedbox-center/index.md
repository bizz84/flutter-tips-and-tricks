# Responsive Flutter card layout with SizedBox & Center

How do you create a Flutter card layout that grows horizontally up to a given width, then remains fixed at that width just like in this example?

![](014_centered-layout.gif)

---

This can be done by composing `Center` and `SizedBox` widgets like so:

![](014_centered_card_layout.png)

---

Why does this work?

Well, it's all about **tight** vs **loose** constraints:

- Center has loose constraints
- SizedBox has tight constraints

Combine them together for profit.

This excellent article by [@mhadaily](https://twitter.com/mhadaily) explains all the details:

- [Best practices for laying out your Flutter app](https://blog.logrocket.com/best-practices-laying-out-flutter-app/)

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1445400059894542337) 🙏