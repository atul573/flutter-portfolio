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
## Code Description
This is a simple Flutter code that creates a basic portfolio app with the developer's profile information displayed in a structured layout. Let's go through the code step by step to understand what each part does:

1. Import statements:
   - The code imports two packages: `flutter/material.dart` and `font_awesome_flutter/font_awesome_flutter.dart`.
   - `flutter/material.dart` contains Flutter's material design widgets, which are used to create the user interface.
   - `font_awesome_flutter/font_awesome_flutter.dart` provides access to a collection of icons from the FontAwesome icon library.

2. `main()` function:
   - The entry point of the Flutter app. It calls the `runApp()` function to start the app by passing an instance of the `MyApp` widget.

3. `MyApp` class:
   - A StatelessWidget that represents the root of the app.
   - It returns a MaterialApp widget, which is a container for the entire application and configures some basic settings for the app.

4. `PortfolioHome` class:
   - Another StatelessWidget that represents the home page of the portfolio app.
   - It returns a Scaffold widget, which provides a basic structure for the app's layout, including an app bar and body.

5. `Scaffold` widget:
   - The main container that holds the entire UI of the app.
   - It contains an AppBar as the top bar with the title "My Portfolio."

6. `Center` widget:
   - The body of the app is wrapped in a Center widget, which centers its child widget both horizontally and vertically on the screen.

7. `Column` widget:
   - The child of the Center widget is a Column, which is used to display its children widgets in a vertical arrangement.

8. `CircleAvatar` widget:
   - Displays a circular avatar with the developer's profile image.
   - The image is fetched from the 'images/profile.jpeg' file.

9. `Text` widgets:
   - Display the developer's name and job title.
   - The name is styled with a larger font size and bold text, while the job title is styled with a smaller font size and grey color.

10. `Card` widgets:
   - Each card represents a section of the developer's contact information.
   - They contain a ListTile, which is a predefined widget to display a leading icon and a title.

11. `Icon` widget:
   - Displays an icon from the FontAwesome icon library.
   - The leading icon in each ListTile indicates the type of contact information (phone, email, website).

12. `Text` widget in ListTile:
   - Displays the actual contact information (phone number, email address, website URL).

Overall, this code sets up a portfolio app with the developer's profile information, including their name, job title, profile picture, and contact details displayed in a clean and organized layout. It uses Flutter's material design and FontAwesome icons to enhance the visual appeal of the app.

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

## Step 6: Adding more feature
Use your creativity to enhance app's experience

### Tip:
1. Added intent on click 
2. Change Background color
3. Try different text font



## Conclusion

Congratulations! You've just created a basic Portfolio app using Flutter. You've learned how to use various widgets to build the user interface and display contact information like a Portfolio. Feel free to enhance the app by adding more features and personalizing it to your liking.

You can find the complete source code for this codelab on [GitHub](https://github.com/atul573/flutter-portfolio).

Happy coding! 🚀
