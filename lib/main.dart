import 'package:alliance/transfer_screen.dart';
import 'package:alliance/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root Widget - ParentWidget
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Color(0xfff5f8fa),
      ),
      home: const TransferScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
