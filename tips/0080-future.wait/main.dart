void main() async {
  final userWallet = UserWallet();

  Future.wait([
    userWallet.totalTrasactions('url'),
    userWallet.currentBalance('url')
  ]).then((value) => print(value));
}

class UserWallet {
  Future<int> totalTrasactions(String url) async {
    return await Future.delayed(Duration(seconds: 1), () => 2);
  }

  Future<int> currentBalance(String url) async {
    return await Future.delayed(Duration(seconds: 1), () => 200);
  }
}
