# Running tests with GitHub actions

One of the most best things you can do for your Flutter project is to run all the tests when you push your code.

And with GitHub workflows, this can be accomplished in 10 lines of code.

Just create a `tests.yaml` file and put it in `.github/workflows`

Wanna learn more? 👇

![](027-github-tests.png)

---

There is SO MUCH more that you can do with GitHub workflows!

This page covers the entire workflows syntax. 100% worth it:

- [Workflow syntax for GitHub Actions](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)

### Adding a tests workflow to your repo

To add a basic test worflow to your project, create a `.github/workflows/tests.yaml` file with these contents:

```yaml
name: Run Tests
on: [push, workflow_dispatch]
jobs:
  drive:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: subosito/flutter-action@v2.8.0
      run: flutter test
```

---

I'll be covering all the advanced setup stuff, including code signing, Testflight, Fastlane, API secrets and much more in my upcoming course about Flutter in Production.

If this is of interest, you can sign up here:

- [The Complete Flutter Course Bundle](https://codewithandrea.com/courses/complete-flutter-bundle/)

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1488578982656290820) 🙏

---

| Previous | Next |
| -------- | ---- |
| [How to run Flutter Integration Tests at Hyper Speed](../0025-how-to-run-flutter-integration-tests-at-hyper-speed/index.md) | [Better Comments Extension for VSCode](../0027-better-comments-extension-for-vscode/index.md) |