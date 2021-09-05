import 'package:flutter/material.dart';
import 'package:my_assistant/pages/home.dart';
import 'package:my_assistant/pages/summary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => const HomePage(),
        '/summary': (context) => const Summary()
      },
      initialRoute: '/',
    );
  }
}
