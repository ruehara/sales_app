import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/core/app_init/app.dart';
import 'package:sales_app/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
