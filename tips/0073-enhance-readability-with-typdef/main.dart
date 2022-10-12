typedef SpecialMap = Map<int, String>;

void main() {
  final specialMap = SpecialMap();
  specialMap[1] = 'one';
  specialMap.addAll({'2': 'two'});
}
