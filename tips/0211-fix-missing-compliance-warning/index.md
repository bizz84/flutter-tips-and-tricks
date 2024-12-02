# Fix for Missing Compliance Warning in App Store Connect

Tired of seeing the "Missing Compliance" warning when uploading builds to App Store Connect?

If your app does **not** use Non-Exempt Encryption, set `ITSAppUsesNonExemptEncryption` to `NO` in your `Info.plist` file in Xcode.

Upload your next build, and the warning will disappear. 👍

![](211.png)

<!--

Tired of seeing the "Missing Compliance" warning when uploading builds to App Store Connect?

Assuming your app uses Non-Exempt Encryption, you can set ITSAppUsesNonExemptEncryption to NO in your Info.plist file in Xcode.

Once you upload the next build, the warning will disappear. 👍

-->

---

For more details, read:

- [Complying with Encryption Export Regulations](https://developer.apple.com/documentation/security/complying-with-encryption-export-regulations)

---

| Previous | Next |
| -------- | ---- |
| [Material Icons Theme (VSCode Extension)](../0210-material-icons-theme-vscode-extension/index.md) |  |

---

<!-- TWITTER|https://x.com/biz84/status/1862524737651376212 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_tired-of-seeing-the-missing-compliance-activity-7268290796854902784-iNzJ -->
<!-- BLUESKY|https://bsky.app/profile/codewithandrea.com/post/3lc3wqvcqus2d -->
