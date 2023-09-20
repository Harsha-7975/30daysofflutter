import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),

        // in day 10, we are editing this adding this app bar ka thing
        // under widgets we are creating a file, themes.dart

        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          //toolbarTextStyle: Theme.of(context).textTheme,
          foregroundColor: Colors.black,
        ),
          //textTheme: Theme.of(context).textTheme,
      );

     static ThemeData get darkTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),

        // in day 10, we are editing this adding this app bar ka thing
        // under widgets we are creating a file, themes.dart

        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          //toolbarTextStyle: Theme.of(context).textTheme,
          foregroundColor: Colors.white,
        ),
          //textTheme: Theme.of(context).textTheme,
     );
}