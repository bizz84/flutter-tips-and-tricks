import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> addJob() {
  return FirebaseFirestore.instance.collection('jobs').add({
    'title': 'Flutter Developer',
    'company': 'ABC Inc.',
    'createdAt': DateTime.now(),
  })
}

class Job {
  Job({required this.title, required this.company, required this.createdAt});
  final String title;
  final String company;
  // On the Dart side, it's more practical to work with DateTime
  final DateTime? createdAt;

  factory Job.fromMap(Map<String, dynamic> map) {
    final createdAt = map['createdAt'];
    return Job(
      title: map['title'] as String,
      company: map['company'] as String,
      createdAt: createdAt != null ? (createdAt as Timestamp).toDate() : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'title': title,
        'company': company,
        if (createdAt != null) 'createdAt': Timestamp.fromDate(createdAt!),
      };
}
