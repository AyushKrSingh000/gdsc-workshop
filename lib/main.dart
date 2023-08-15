import 'package:demo_gdsc/grid_view_screen.dart';
import 'package:demo_gdsc/home_page.dart';
import 'package:demo_gdsc/list_view_screen.dart';
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
    return MaterialApp(
      title: 'Demo GDSC',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/list-view': (context) => ListViewScreen(),
        '/grid-view': (context) => GridViewScreen(),
      },
    );
  }
}
