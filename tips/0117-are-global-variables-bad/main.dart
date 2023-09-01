import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

// const widgets are good and improve performance ✅
const gapW4 = SizedBox(width: 4.0);
const gapH8 = SizedBox(height: 8.0);

// all providers are global, but their state isn't ✅
final randomQuoteProvider = FutureProvider<http.Response>((ref) {
  return http.get(Uri.https('api.quotable.io', 'random'));
});

// global mutable state is bad ❌
var isLoggedIn = false;
var orderStatus = OrderStatus.dispatched;
