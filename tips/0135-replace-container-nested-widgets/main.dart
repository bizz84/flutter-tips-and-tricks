// The container widget doesn't have a const constructor

Container(
  width: 300.0,
  height: 300.0,
  color: Colors.green,
  padding: const EdgeInsets.all(32),
  child: const Text('const'),
)

// As a result, the child widget can be const, but not the parent Container.

// So it's better to replace it dedicated widgets as needed

const SizedBox(
  width: 300.0,
  height: 300.0,
  child: ColoredBox(
    color: Colors.green,
    child: Padding(
      padding: EdgeInsets.all(32),
      child: Text('const'),
    ),
  ),
)

// This way, when the parent widget rebuilds, this one won't (because it's const)