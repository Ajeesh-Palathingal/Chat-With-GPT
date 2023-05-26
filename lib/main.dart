import 'package:chat_with_gpt/core/colors.dart';

import 'package:chat_with_gpt/presentation/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'application/chat bloc/chat_bloc.dart';
import 'application/models bloc/models_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ModelsBloc()),
        BlocProvider(create: (context) => ChatBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: GoogleFonts.notoSansMalayalam().fontFamily,
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
          appBarTheme: const AppBarTheme(color: kCardColor),
          primarySwatch: Colors.grey,
        ),
        home: ChatScreen(),
      ),
    );
  }
}
