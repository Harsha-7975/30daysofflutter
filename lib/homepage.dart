import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 9;
    var name = "Harsha";


    return Scaffold(
        appBar: AppBar(
          title: Text("First Flutter App"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of "+name),
          ),
        ),
        drawer: Drawer(),
      );
  }
}