import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/main.dart';
import 'package:sales_app/modules/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
