import 'package:flutter/material.dart';
import 'package:teatcher_project/home_page.dart';
import 'package:teatcher_project/students_details.dart';
import 'package:teatcher_project/studet_tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        fontFamily: "PNU",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home:  const Directionality(
          textDirection: TextDirection.rtl, child: Home_page()),

    );
  }
}
