import 'package:flutter/material.dart';
import 'package:my_store_app/constants.dart';
// import 'package:my_store_app/screens/home_screen.dart';
import 'screens/home_screen.dart'; //نفس السابق
import 'package:google_fonts/google_fonts.dart';
// import 'package:my_store_app/constants.dart';
// import 'package:flutter_localization/flutter_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electronic Store',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: kPrimaryColor,
        // secondaryHeaderColor: kPrimaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
      ),
      home: const HomeScreen(),
    );
  }
}
