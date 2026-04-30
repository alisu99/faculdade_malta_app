import 'package:faculdade_malta_app/models/aluno.dart';
import 'package:faculdade_malta_app/styles/colors.dart';
import 'package:faculdade_malta_app/views/home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => Aluno(), child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.googleSansTextTheme(),
        scaffoldBackgroundColor: CustomColor.background,
        appBarTheme: AppBarTheme(
          backgroundColor: CustomColor.redMalta,
          iconTheme: IconThemeData(color: CustomColor.branco),
          titleTextStyle: TextStyle(fontSize: 16, fontWeight: .bold),
          centerTitle: true,
        ),
      ),
      routes: {'homepage': (context) => HomePage()},
      initialRoute: 'homepage',
    );
  }
}
