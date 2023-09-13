import 'dart:html' as html;

void openStripeCheckout(String stripeUrl) {
  html.window.location.href = stripeUrl;
}
