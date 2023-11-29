Stream<List<InAppPurchase>> userPurchasesStream() {
  return Rx.combineLatest2(
    userAccountStream(), // Stream<UserAccount>
    inAppPurchasesStream(), // Stream<List<InAppPurchase>>
    (UserAccount user, List<InAppPurchase> inAppPurchases) {
      // only return the purchases made by the user
      return inAppPurchases
          .where((iap) => user.purchasedIDs.contains(iap.id))
          .toList();
    },
  );
}
