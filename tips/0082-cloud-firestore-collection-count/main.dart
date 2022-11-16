import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  final booksRef = FirebaseFirestore.instance
      .collection('books')
      .where('genre', arrayContains: 'non-fiction');
  final totalBooks = await booksRef.count().get();
  print('Found a total of ${totalBooks.count} books.');
}
