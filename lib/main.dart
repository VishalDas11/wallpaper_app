import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/screens/categery.dart';
import 'package:wallpaper_app/views/screens/home.dart';
import 'package:wallpaper_app/views/screens/search_screen.dart';

// TODO  Wallpaper App

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


