void main() {
  const favourite = 'I like pizza with tomatoes';
  final newFavourite = favourite.replaceAll('pizza', 'pasta');
  var totalSpaces = 0;
  for (var i = 0; i < newFavourite.length; i++) {
    final c = newFavourite[i];
    if (c == ' ') {
      totalSpaces++;
    }
    print(' Counted $totalSpaces spaces ');
  }
}
