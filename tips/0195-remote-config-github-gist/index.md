# Remote Config via GitHub Gist

Did you know?

You can remotely control the behaviour of your app by fetching some JSON from a GitHub gist.

This is super useful when implementing:

✅ Force update
🚩 Feature flags
🧪 A/B testing

No Firebase or custom backend needed! 🙌

![](195.png)

<!--
Store this JSON in a Gist and fetch it during app startup:

{
  "config" : {
    "required_version": "2.0.0"
  },
  "feature-flags": [
    {
      "id": "new-paywall",
      "percentage": 10,
    },
    {
      "id": "feature-discovery",
      "percentage": 25,
    },
  ]
}

Then, use the values to control the behaviour of your app:

✅ Force update
✅ Feature flags
✅ A/B testing

No backend needed!
-->

---

I cover this in more detail in my latest course.

Check it out here and take advantage of my launch sale (currently 50% off!) 👇

- [Flutter in Production](https://codewithandrea.com/courses/flutter-in-production/)

---

| Previous | Next |
| -------- | ---- |
| [Generate Commit Messages with Copilot](../0194-copilot-generate-commit-messages/index.md) |  |


<!-- TWITTER|https://x.com/biz84/status/1843928541282672987 -->
<!-- LINKEDIN|https://www.linkedin.com/posts/andreabizzotto_did-you-know-you-can-remotely-control-the-activity-7249694440552824832-nLsm -->



