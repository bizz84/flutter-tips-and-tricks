enum ConnectionState { none, waiting, active, done }

// Example of conditional logic with an if-else chain
String getStatus(ConnectionState state, bool hasData, bool hasError) {
  if (state == ConnectionState.waiting) {
    return 'Loading';
  } else if (hasData) {
    return 'Got data';
  } else if (hasError) {
    return 'Got error';
  } else {
    return 'Unknown status';
  }
}

// Same example with a record and a switch expression
String getStatus2(ConnectionState state, bool hasData, bool hasError) {
  final status = (state, hasData, hasError);
  return switch (status) {
    (ConnectionState.waiting, _, _) => 'Loading',
    (_, true, _) => 'Got data',
    (_, _, true) => 'Got error',
    _ => 'Unknown status',
  };
}
