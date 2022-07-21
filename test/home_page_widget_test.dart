import 'package:flutter_test/flutter_test.dart';
import 'package:color_changer/pages/home_page.dart';

void main() {
  testWidgets("HomePage has a title and message", (tester) async {
    await tester.pumpWidget(const HomePage());
    final titleFinder = find.text("Solid");
    final messageFinder = find.text("Hey There");

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
