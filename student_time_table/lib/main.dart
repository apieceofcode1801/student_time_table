import 'package:flutter/material.dart';
import 'package:student_time_table/app/locator.dart';
import 'package:student_time_table/ui/views/home/home_view.dart';
import 'app/router.gr.dart' as router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.Router(),
      home: HomeView(),
    );
  }
}
