# Custom Widgets Library

A Flutter package providing a collection of reusable, customizable widgets to speed up the development process and enhance the UI of your Flutter applications. The `custom_widgets_library` package currently offers widgets for buttons, text fields, and cards, with an emphasis on flexibility and ease of use.

Features

- Customizable Buttons: Create buttons with various colors, sizes, and shapes.
- Stylish Text Fields: Easily add text fields with hint text, icons, and password protection.
- Elegant Cards: Display content in a clean card layout with customizable colors and elevation.

Getting Started

Prerequisites
Ensure that you have the Flutter SDK installed. For more details, see the Flutter installation guide.

Installation
Add the following dependency to your pubspec.yaml file:

dependencies:
  custom_widgets_library: ^0.0.1

Then, run the following command to fetch the package:

flutter pub get

Import the package into your Dart code:

import 'package:custom_widgets_library/custom_widgets_library.dart';

Widgets Overview

1. CustomButton
A flexible button widget that allows you to customize text, color, size, and callback actions.

CustomButton(
  text: 'Submit',
  onPressed: () {
    print('Button pressed!');
  },
  color: Colors.green,
  width: 150,
  height: 50,
)

Properties
- text (String): Text to display on the button.
- onPressed (VoidCallback): Callback function for button press.
- color (Color?): Background color of the button (default: Colors.blue).
- width (double?): Width of the button (default: 200).
- height (double?): Height of the button (default: 50).

2. CustomTextField
A customizable text input field with options for hint text, icons, and password protection.

CustomTextField(
  hintText: 'Enter your email',
  prefixIcon: Icons.email,
  isPassword: false,
)

Properties
- hintText (String): Placeholder text to display when the field is empty.
- controller (TextEditingController?): Controller to handle text input.
- isPassword (bool): Whether the field hides text for password input (default: false).
- prefixIcon (IconData?): Optional icon to display at the start of the field.

3. CustomCard
A simple card to neatly display content with customizable color and elevation.

CustomCard(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text('This is a card'),
        Text('You can add any content inside!'),
      ],
    ),
  ),
  color: Colors.white,
  elevation: 3.0,
)

Properties
- child (Widget): Content to display inside the card.
- color (Color): Background color of the card (default: Colors.white).
- elevation (double?): Elevation effect of the card (default: 2.0).

Example

Here's a full example of how to use the CustomButton, CustomTextField, and CustomCard together:

import 'package:flutter/material.dart';
import 'package:custom_widgets_library/custom_widgets_library.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Widgets Library'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Username',
                prefixIcon: Icons.person,
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Login',
                onPressed: () {
                  print('Login button pressed');
                },
              ),
              SizedBox(height: 20),
              CustomCard(
                child: Column(
                  children: [
                    Text(
                      'Welcome to Custom Widgets Library!',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text('This is a custom card widget.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Contributing

We welcome contributions from the community. To contribute:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/your-feature-name).
3. Make your changes and commit them (git commit -m 'Add new feature').
4. Push your changes (git push origin feature/your-feature-name).
5. Open a pull request to the main branch.

Please ensure that all contributions adhere to the project's coding style and are covered by tests.

License

This project is licensed under the MIT License. See the LICENSE file for details.

For any questions or feedback, please feel free to contact rensithudaragonalagoda@gmail.com.

Happy Coding! 🎉
