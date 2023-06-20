void checkBirthday(DateTime date, ({String name, int age}) person) {
  if (person.name == 'Andrea' && date.month == 6 && date.day == 16) {
    final age = person.age + 1;
    print('Happy ${age}th Birthday, ${person.name}!');
  }
}

void main() {
  checkBirthday(DateTime.now(), (name: 'Andrea', age: 38));
}
