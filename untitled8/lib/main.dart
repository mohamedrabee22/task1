import 'package:flutter/material.dart';
import 'movise_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get kAppName => null;
  get kThemeApp => null;

  Map? get map => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppName,
      theme: kThemeApp,
      home: MoviePage(map!),
    );
  }
}
