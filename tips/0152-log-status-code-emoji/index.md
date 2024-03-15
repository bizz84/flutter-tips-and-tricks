# Logging HTTP status codes with emojis

Want to get pretty network logs that look like this?

- ✅ 200 ✅ <URL>
- 🟠 308 🟠 <URL>
- ❌ 404 ❌ <URL>

With [Dio](https://pub.dev/packages/dio), this is super easy:
- add an interceptor and override the `onResponse` method
- call a helper function that maps HTTP status codes to emojis with a switch expression

![](152.png)

<!--
// A simple helper function that maps http status codes to emojis and logs them to the console

import 'dart:developer';

void logResponse(int? statusCode, String url) {
  final emoji = switch (statusCode) {
    != null && >= 200 && < 300 => '✅',
    != null && >= 300 && < 400 => '🟠',
    _ => '❌'
  };
  log('$emoji ${statusCode ?? ''} $emoji $url');
}
-->

---

Don't want to roll this out yourself or need a more robust solution?

Then, use [Talker](https://pub.dev/packages/talker) - an advanced error handler and logger for Flutter (check this cool [web demo](https://frezyx.github.io/talker)).

A separate [`talker_dio_logger`](https://pub.dev/packages/talker_dio_logger) package also exists, which is perfect for this use case. 👌

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1768588707852902738) 

---

| Previous | Next |
| -------- | ---- |
| [Scroll-to-index inside a ListView](../0151-scroll-to-index/index.md) |  |

