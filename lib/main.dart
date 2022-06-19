import 'package:app/home/home_screen.dart';
import 'package:app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expert tech advice',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        fontFamily: GoogleFonts.roboto().fontFamily,
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper(child: child!),
        minWidth: 480,
        maxWidth: 1800,
        // defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          ResponsiveBreakpoint.resize(600, name: Strings.kLargeMobile),
          ResponsiveBreakpoint.resize(980, name: TABLET),
          ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      initialRoute: '/',
      routes: {"/": (context) => HomeScreen()},
    );
  }
}
