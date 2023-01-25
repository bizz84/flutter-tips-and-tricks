ElevatedButton(
  child: const Text('Submit'),
  onPressed: () async {
    await doSomeAsyncWork();
    if (context.mounted) {
      Navigator.of(context).pop();
    }
  },
),