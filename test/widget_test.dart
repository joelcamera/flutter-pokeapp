
import 'package:flutter_test/flutter_test.dart';
import 'package:pokeapp/widgets/my_home_page/MyHomePage.dart';
import 'package:pokeapp/widgets/poke_appbar/PokeAppbar.dart';
import 'package:pokeapp/widgets/poke_body/PokeBody.dart';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });

  testWidgets("AppBar tiene titulo", (WidgetTester tester) async {
    await tester.pumpWidget(const MyHomePage());

    expect(find.text("Pokemon App!"), findsOne);
  });
}
