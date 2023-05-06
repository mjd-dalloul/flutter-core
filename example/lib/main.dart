import 'package:example/injection.dart';
import 'package:example/presentation/pages/post_page.dart';
import 'package:flutter/material.dart';

void main() {
  inject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'example for flutter core',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PostPage(),
    );
  }
}
