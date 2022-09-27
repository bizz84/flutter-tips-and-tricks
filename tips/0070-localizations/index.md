# Localizing Flutter apps with code gen

If your users speak another language, you’ll need to localize your Flutter app 🗺

Here’s how to setup Flutter app localizations in just 5 minutes (using code generation).

🧵 

![](070.0.png)

--

1️⃣  As a first step, we need to add the required packages to the pubspec.yaml file.

![](070.1.png)

---

2️⃣ Create `l10n.yaml` at the root

✔️ `arb-dir` is the directory where Flutter will look for the localized strings
✔️ Dart localizations classes will be generated in the `output-dir`
✔️ `template-arb-file` is the main template that contains a description for each localized message

![](070.2.png)

---

3️⃣ Create the ARB files under lib

An ARB file is an “application resource bundle” used by Flutter to generate corresponding Dart files. Each locale will have its own ARB file.

For example, to add French, just create app_fr.arb in the same directory.

![](070.3.png)

---

4️⃣ Add the `@@locale` key and the first key/value pair. Note that there is a small difference between the file we declared as a template in l10n.yaml and other ARB files.

![](070.4.png)

---

Synthetic or non-synthetic?

The localizations files can either be generated as a synthetic or non-synthetic package.

Let's see what this means and which one we should choose.👇🏻

---

5️⃣: Synthetic

Set `generate` to true in pubspec.yaml, then run the command `flutter gen-10n` at the root using the terminal. This will generate a new package under .dart_tool, which ignores the `output-dir` we specified earlier in `l10n.yaml`.

![](070.5.png)

---

5️⃣: Non-synthetic

We might want the localizations files to be in the `output-dir`, as `.dart_tool` is often ignored.

Add a new key to `l10n.yaml`: `synthetic-package: false`.

This will let Flutter know we need a non-synthetic package (it is true by default).

![](070.6.png)

---

Let’s explore the generated files 🔍

Inside the main file (`app_localizations.dart`), we can notice the key `name` from the ARB template, along with the description. 

The `AppLocalizations` class is an abstract class that will be extended by every locale delegate.

![](070.7.png)

---

In this example, we defined 2 locales, therefore we have 2 Dart files for each one of them. 

👉🏻 `app_localizations_en.dart`
👉🏻 `app_localizations_es.dart`

As noted earlier, both extend the base class `AppLocalizations`.

![](070.8.png)

---

6️⃣ Finally, we need to add the localizations delegate to our `MaterialApp`. 

We can then use it anywhere in the app!🚀

![](070.9.png)

---

Bounus: BuildContext extension 🧩

This is not required, but helps us make the syntax shorter.
https://codewithandrea.com/articles/flutter-localization-build-context-extension/

---

You can find more in the official Flutter documentation 👇🏻

[Internationalizing Flutter apps](https://docs.flutter.dev/development/accessibility-and-localization/internationalization#advanced-locale-definition)

---

### Found this useful? Show some love and share the [original tweet]() 🙏

| Previous | Next |
| -------- | ---- |
| [When to use `SizedBox.shrink()` to return an empty box](../0069-sizedbox-shrink/index.md) | |