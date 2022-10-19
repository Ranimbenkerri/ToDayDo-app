import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo/Models/TaskData.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home:HomePage(),
      ),
    );
  }
}
