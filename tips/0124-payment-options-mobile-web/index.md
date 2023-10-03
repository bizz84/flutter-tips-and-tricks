# Payment options on mobile and web

What SDKs and packages should you use to take payments in your Flutter mobile or web app?

Well, it depends. 😅

If you’re selling DIGITAL products or subscriptions on mobile, you can use:

- in_app_purchase package by the Flutter team
- 3rd party providers like RevenueCat or Glassfy

All these solutions are built on top of the native payment SDKs (which means that Apple & Google keep 30% of all IAP sales, and 15% for subscriptions after the first year).

But you can choose a different payment stack when:

- selling PHYSICAL products on any platform (mobile or web)
- selling DIGITAL products or SaaS on web ONLY (not mobile)

In these cases, you can go with options such as:

- Stripe
- PayPal
- Paddle
- LemonSqueezy
- Gumroad
- many many others 😅

With these platforms, the fees range from ~3% to ~13% (depending on the platform).

Also note that some of the platforms above act as Merchant-of-Record (MoR), while some others don’t (but that’s a complex topic for another time).

TL;DR:

- Selling IAPs or subscriptions on mobile? → Pay the Apple & Google fees
- Selling on web only or physical products/services? → Go with Stripe & friends

Note: all the above are just guidelines.

I’m not an expert on the matter, so make sure you read the App Store guidelines and understand what makes the most sense for your project.

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1707403535481016424) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Top reasons for using a realtime backend](../0123-user-realtime-backend/index.md) | [Xcode 15 DT_TOOLCHAIN_DIR issue](../0125-xcode-15-cocoapods-issue/index.md) |

