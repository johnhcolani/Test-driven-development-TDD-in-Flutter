import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/login_screen.dart';

void main() {
  testWidgets('Should show a title', (WidgetTester tester) async {
    //Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));
    //Act
    Finder title = find.text('Login');

    //Assert
    expect(title, findsOneWidget);
  });

  testWidgets('Should have one textField form to collect user email id',
      (WidgetTester tester) async {
//Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder usernameTextField = find.byKey(const ValueKey('email_id'));

    //Assert
    expect(usernameTextField, findsOneWidget);
  });

  testWidgets('Should have one textField form to collect user password',
      (WidgetTester tester) async {
//Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder passwordTextField = find.byKey(const ValueKey('password_id'));

    //Assert
    expect(passwordTextField, findsOneWidget);
  });
  testWidgets('Should have one login button', (WidgetTester tester) async {
//Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder loginButton = find.byType(ElevatedButton);

    //Assert
    expect(loginButton, findsOneWidget);
  });

  testWidgets('Should show required filed if email and password is empty', (WidgetTester tester) async {
//Arrange
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    //Act
    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorText = find.text('Required Field');

    //Assert
    expect(errorText, findsNWidgets(2));
  });
  testWidgets('Should submit form when user email id & password is valid', (WidgetTester tester)async{
  //Arrange
    await tester.pumpWidget(MaterialApp(home: LoginScreen(),));

    // Act


    Finder usernameTextField = find.byKey(const ValueKey('email_id'));
    Finder passwordTextField = find.byKey(const ValueKey('password_id'));
  await tester.enterText(usernameTextField, 'john@gmail.com');
  await tester.enterText(passwordTextField, 'password');


    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorText = find.text('Required Field');


    //Assert
expect(errorText, findsNothing);
  });
}
