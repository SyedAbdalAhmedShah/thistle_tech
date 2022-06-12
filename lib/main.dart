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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, child!),
        minWidth: 480,
        maxWidth: 1800,
        // defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.resize(600, name: Strings.kLargeMobile),
          ResponsiveBreakpoint.resize(980, name: TABLET),
          ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      initialRoute: '/',
      routes: {"/": (context) => const HomeScreen()},
    );
  }
}
