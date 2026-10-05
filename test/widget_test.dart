import 'package:flutter_test/flutter_test.dart';
import 'package:college_project1/main.dart';

void main() {
  testWidgets('Murshid-UT app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const MurshidUTApp());

    expect(find.byType(MurshidUTApp), findsOneWidget);
  });
}