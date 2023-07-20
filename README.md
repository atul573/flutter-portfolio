# Flutter Portfolio App Codelab

In this codelab, we'll walk you through the process of creating a simple Portfolio app using Flutter. The app will display the user's contact information like a Portfolio, and you'll learn how to use Flutter widgets to create a visually appealing and functional UI.

## Prerequisites

Before you begin, ensure you have the following:

- Flutter SDK installed on your machine. You can find installation instructions at [Flutter's official website](https://flutter.dev/docs/get-started/install).
- A code editor (e.g., Visual Studio Code, Android Studio, IntelliJ) with the Flutter extension installed.

## Step 1: Create a new Flutter project

1. Open your terminal or command prompt.
2. Create a new Flutter project by running the following command:

```bash
flutter create portfolio_app
cd portfolio_app
```
## Step 1: Create a new Flutter project (Alternative )
If you prefer not to set up the development environment locally, you can try this project on FlutLab. Follow these steps:
1. Open Your FlutLab by clicking [here](https://flutlab.io/).

2. Under "My Projects," you will find the "Hello World" project already created. You can use this project to follow the below instructions

## Step 2: Update `pubspec.yaml` file

1. Open the `pubspec.yaml` file in your project and add the following dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  font_awesome_flutter: ^10.5.0
```

2. Save the file and run `flutter pub get` in your terminal to fetch the newly added dependencies.

## Step 3: Replace `lib/main.dart` content

1. Replace the content of the `lib/main.dart` file with the following code:

```dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Atul Sharma',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.phone),
                title: Text('123-456-7890'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.envelope),
                title: Text('atul573.sharma@gmail.com'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.globe),
                title: Text('www.testdomain.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


```

## Step 4: Prepare your assets

1. Place an image named `profile_image.jpg` in the `assets` folder of your project. This image will be used as the Portfolio owner's profile picture.

## Step 5: Run the app

1. Open your terminal or command prompt.
2. Navigate to your project directory.
3. Run the app using the following command:
```bash
flutter run
```

## Step 5: Run the app (In Case of FlutLab)
1. click on the top-left icon to run the emulator.


## Conclusion

Congratulations! You've just created a basic Portfolio app using Flutter. You've learned how to use various widgets to build the user interface and display contact information like a Portfolio. Feel free to enhance the app by adding more features and personalizing it to your liking.

You can find the complete source code for this codelab on [GitHub](https://github.com/atul573/flutter-businessCard).

Happy coding! 🚀
