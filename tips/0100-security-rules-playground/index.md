# Firestore Security Rules Playground

Did you know?

You can quickly test your Firestore security rules using the Rules Playground.

It's located in the bottom left corner. ↙

Here's how it works. 🧵

![](100.1-rules-playground-button.png)

---

First of all, you have to choose what kind of operation you want to perform.

The available options are:

- get
- create
- update
- delete

![](100.2-simulation-type.png)

---

Then, choose the location of the document that you want to test.

It doesn't matter if the document exists or not.

What matters is that the path points to a document-level location (not a collection).

![](100.3-location.png)

---

If needed, you can simulate an authenticated request.

This allows you to specify the following parameters:

- authentication provider
- Firebase UID
- email (and whether it's verified or not)
- name
- phone number

![](100.4-authentication.png)

---

Once you're ready, you can run the simulation.

And if it violates the security rules, you'll get a red banner with some details.

![](100.5-run.png)

---

The rules playground is very handy when you're prototyping your security rules.

But if you want more control, you can use the Firebase Emulator Suite on your local machine or the Google Cloud Shell. 👇

![](100.6-dev-tools.png)

---

Firebase is full of little nifty tools that make our life easier. 🔥

You can use it to build simple apps, all the way to complex full-stack apps.

And if you want to go deeper with Firebase, check out my latest course. 👇

- [Flutter & Firebase Masterclass](https://codewithandrea.com/courses/flutter-firebase-masterclass/)

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1651212776113618944) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Firestore OR queries 🔥](../0099-firestore-or-query/index.md) |  |
