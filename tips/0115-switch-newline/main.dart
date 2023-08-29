switch (result) {
  Success( =final value) => 'success',
  Failure( =final error) => 'failure',
};

(,switch (result) {
  Success( =final value) => 'success',
  Failure( =final error) => 'failure',
});

final message = switch (result) {
  Success(:final value) => 'success',
  Failure(:final error) => 'failure',
};
print(message);

return switch (result) {
  Success( =final value) => 'success',
  Failure( =final error) => 'failure',
};