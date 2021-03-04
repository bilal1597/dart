import 'package:catalog_app/screens/home_page.dart';
import 'package:catalog_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          primarySwatch: Colors.red, fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => Login(),
      },
    );
  }
}
