
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker_app_firebase/src/data/job.dart';

class FirestoreRepository {
  const FirestoreRepository(this._firestore);
  final FirebaseFirestore _firestore;

  Query<Job> jobsQuery() { ... }
}

class JobsListView extends ConsumerWidget {
  const JobsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repository = ref.watch(firestoreRepositoryProvider);
    return FirestoreListView<Job>(
      query: repository.jobsQuery(),
      ...
    );
  }
}

class FirestoreRepository {
  const FirestoreRepository(this._firestore);
  final FirebaseFirestore _firestore;

  Stream<List<Job>> jobsStream() { ... }
}
