## test/widget_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_template/main.dart';

void main() {
  group('App Widget Tests', () {
    testWidgets('App loads successfully', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      
      // Verify app title is displayed
      expect(find.text('Flutter Template'), findsOneWidget);
      
      // Verify welcome message is displayed
      expect(find.text('Welcome to Flutter Template!'), findsOneWidget);
      
      // Verify Get Started button is displayed
      expect(find.text('Get Started'), findsOneWidget);
    });

    testWidgets('Bottom navigation works', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      
      // Initially on Home tab
      expect(find.text('Welcome to Flutter Template!'), findsOneWidget);
      
      // Tap on Profile tab
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();
      
      // Verify we're on Profile screen
      expect(find.text('Flutter Developer'), findsOneWidget);
    });

    testWidgets('Get Started button shows snackbar', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      
      // Tap Get Started button
      await tester.tap(find.text('Get Started'));
      await tester.pump();
      
      // Verify snackbar is shown
      expect(find.text('Ready to build something awesome!'), findsOneWidget);
    });
  });
}
