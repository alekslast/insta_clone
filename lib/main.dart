import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/widget_tree.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  iconTheme: const IconThemeData(color: Colors.black),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xfffef7ff),
    foregroundColor: Colors.black,
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 33, color: Colors.black),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 20, 18, 24),
    foregroundColor: Colors.white,
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 33, color: Colors.white),
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instaclone',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: WidgetTree(),
    );
  }
}
