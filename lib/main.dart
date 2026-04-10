import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:faculdade_malta_app/views/home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        textTheme: GoogleFonts.googleSansTextTheme(),
        scaffoldBackgroundColor: CustomColor.background,
      ),
      routes: {
        'homepage': (context) => HomePage()
        },
      initialRoute: 'homepage',
    );
  }
}
