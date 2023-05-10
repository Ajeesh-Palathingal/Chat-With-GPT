import 'package:chat_with_gpt/core/colors.dart';
import 'package:chat_with_gpt/core/constants.dart';
import 'package:chat_with_gpt/presentation/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
          appBarTheme: AppBarTheme(color: kCardColor),
          primarySwatch: Colors.grey),
      home: ChatScreen(),
    );
  }
}
