Journey Stepper package lets you add a beautiful timeline based on the current data to your Flutter app.

## Installation

1. Add the latest version of package to your pubspec.yaml (and rundart pub get):

```dart
dependencies:
  journey_stepper: ^0.0.11
```

2. Import the package and use it in your Flutter App.

```dart
  import 'package:journey_stepper/journey_stepper.dart';
```

## Feature
1. A fully customizable,beautiful and easy to use these widget on the different scenario.
2. There are various type of properties that you can modify some of them are 
   1.  leftTitle => to show any widget on the left part
   2.  rightTitle => to show any widget on the right part
   3.  icon => to show the icon on the vertical stepper
   4.  iconBackgroundColor=> to show the icon color on the vertical bar
   5.  isLast=> to complete the journey if the index is last

## Usage

```dart
import 'package:flutter/material.dart';
import 'package:journey_stepper/journey_stepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Journey Stepper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) {
          return JourneyStepper(
            leftTitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "We have received your AUD",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "17th May 2023, 3:56 PM",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            rightTitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Received",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "We have received your AUD",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "18th May 2023, 3:56 PM",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            icon: Icons.add,
            iconBackgroundColor: Colors.green,
            isLast: index == 4,
          );
        },
      ),
    );
  }
}
```

## Usage

<!-- ![a output](https://github.com/sagarkoju33/journey-stepper/blob/dfea8d7c6f22e6eaa689758c755b6d629139e09c/assets/output.png) -->

<!-- <table>
  <tr>
    <td><img src="https://github.com/sagarkoju33/journey-stepper/raw/dfea8d7c6f22e6eaa689758c755b6d629139e09c/assets/output.png" alt="Success Status" width="200"></td>
  </tr>
</table> -->

<img src="https://github.com/sagarkoju33/journey-stepper/raw/dfea8d7c6f22e6eaa689758c755b6d629139e09c/assets/output.png" alt="Success Status" width="300" height="540">
