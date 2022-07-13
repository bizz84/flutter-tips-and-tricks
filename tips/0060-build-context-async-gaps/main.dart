class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          // example 1: Navigator (throws runtime error)
          ElevatedButton(
            child: const Text('Do Async Work'),
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 3));
              // Mind the asynchronous gap!
              Navigator.of(context).pop();
            },
          ),
          // example 1: Navigator (fixed)
          ElevatedButton(
            child: const Text('Do Async Work'),
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 3));
              // Mind the asynchronous gap!
              if (!mounted) return;
              Navigator.of(context).pop();
            },
          ),
          // example 2: ScaffoldMessenger (never shows)
          ElevatedButton(
            child: const Text('Do Async Work'),
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 3));
              // Mind the asynchronous gap!
              if (!mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Work is complete')),
              );
            },
          ),
          // example 2: ScaffoldMessenger (shows after work is complete)
          ElevatedButton(
            child: const Text('Do Async Work'),
            onPressed: () async {
              final messenger = ScaffoldMessenger.of(context);
              await Future.delayed(const Duration(seconds: 3));
              // Mind the asynchronous gap!
              messenger.showSnackBar(
                const SnackBar(content: Text('Work is complete')),
              );
            },
          ),
        ],
      ),
    );
  }
}
