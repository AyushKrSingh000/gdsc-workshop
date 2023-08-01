import 'package:demo_gdsc/home_page.dart';
import 'package:demo_gdsc/weclome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo GDSC',
      home: HomeScreen(),
    );
  }
}
