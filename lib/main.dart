import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/screens/details_screen.dart';
import 'package:plant_app_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: GoogleFonts.nunito().fontFamily),
      home: const HomeScreen(),
      initialRoute: "/",
      routes: {"/details": (context) => DetailsScreen()},
    );
  }
}
