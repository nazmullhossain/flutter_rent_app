import 'package:flutter/material.dart';
import 'package:futter_realstate/pages/entry_pages.dart';
import 'package:futter_realstate/pages/home_page.dart';
import 'package:futter_realstate/pages/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
