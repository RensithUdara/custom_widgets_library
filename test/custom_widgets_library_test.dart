import 'package:custom_widgets_library/custom_widgets_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomButton', () {
    testWidgets('renders text correctly and responds to tap',
        (WidgetTester tester) async {
      var buttonPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomButton(
              text: 'Test Button',
              onPressed: () {
                buttonPressed = true;
              },
            ),
          ),
        ),
      );

      // Check if the button contains the correct text
      expect(find.text('Test Button'), findsOneWidget);

      // Simulate a button tap
      await tester.tap(find.byType(CustomButton));
      await tester.pump();

      // Verify if the button's onPressed was triggered
      expect(buttonPressed, isTrue);
    });
  });

  group('CustomTextField', () {
    testWidgets('renders text field with hint text',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: CustomTextField(
              hintText: 'Enter text',
            ),
          ),
        ),
      );

      // Check if the text field contains the correct hint text
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Enter text'), findsOneWidget);
    });
  });

  group('CustomCard', () {
    testWidgets('renders child widgets correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: CustomCard(
              child: Text('Card Content'),
            ),
          ),
        ),
      );

      // Check if the card contains the correct child content
      expect(find.byType(CustomCard), findsOneWidget);
      expect(find.text('Card Content'), findsOneWidget);
    });
  });
}
