import 'package:crypto_stats/crypto_stats/library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crypto_stats/generated/assets.gen.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows building and interacting
  // with widgets in the test environment.
  testWidgets('Profile widget has a name, message, avatar',
      (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(Profile(
      name: 'Raziye Yolasigmazoglu',
      message: 'Welcome',
      avatar: Assets.images.avatar,
    ));

    // Create the Finders.
    final nameFinder = find.text('Raziye Yolasigmazoglu');
    final messageFinder = find.text('Welcome');
    final avatarFinder = find.byWidget(const CircleAvatar());

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(nameFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
    expect(avatarFinder, findsOneWidget);
  });
}
