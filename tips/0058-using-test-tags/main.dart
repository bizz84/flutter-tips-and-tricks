import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Golden image test',
    (tester) async {
      await tester.pumpWidget(const MyApp());
      await expectLater(
        find.byType(MyApp),
        matchesGoldenFile('golden_image.png'),
      );
    },
    tags: ['golden'],
  );
}
