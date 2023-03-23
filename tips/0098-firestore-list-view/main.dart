FirestoreListView<Job>(
  query = jobsQuery, // a value of type Query<Job>
  pageSize = 20, // defaults to 10 if omitted
  emptyBuilder = (context) => const Text('No data'),
  errorBuilder = (context, error, stackTrace) => Text(error.toString()),
  loadingBuilder = (context) => const CircularProgressIndicator(),
  itemBuilder = (context, doc) {
    final job = doc.data();
    return ListTile(
      title: Text(job.name),
      subtitle: Text(job.ratePerHour.toString()),
    );
  },
)