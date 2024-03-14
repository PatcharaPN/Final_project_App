import 'package:flutter/material.dart';
import 'package:flutter_endingproject/core/theme/theme.dart';
import 'package:flutter_endingproject/presentation/pages/Home_page.dart';
import 'package:flutter_endingproject/data/demoDB.dart';

import 'presentation/pages/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dbDemo = DBDemo(); // Create an instance of DBDemo

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: HomePage(dbDemo: dbDemo), // Pass dbDemo to HomePage
    );
  }
}
