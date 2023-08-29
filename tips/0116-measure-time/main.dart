Future<T> measureDuration<T>(Future<T> Function() fn) async {
  // get the start time
  final startTime = DateTime.now();
  // do the work
  final result = await fn();
  // get the end time and calculate the difference
  final elapsed = DateTime.now().difference(startTime);
  print('Elapsed: $elapsed');
  // return the result
  return result;
}

Future<void> main() async {
  final response = await measureDuration(() {
    // post some data with the http package
    final url = Uri.https('example.com', 'whatsit/create');
    return http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  });
  // do something with response ...
}
