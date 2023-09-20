import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';

import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      //created a theme in day 10
      theme: MyTheme.lightTheme,
      initialRoute: MyRoutes.homeRoute,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/" : (context) => LoginPage(), // "/" means homepage
        MyRoutes.homeRoute : (context) => HomePage()
      },
    );
  }
}

// widget is a component