// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl = "https://media.licdn.com/dms/image/D5603AQHYDm0rUUHoMA/profile-displayphoto-shrink_800_800/0/1686913770114?e=2147483647&v=beta&t=Ghmp8ZZyaZ-EpzoVk9tOjB-px3Giunn5WzAhfsMX_8c";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(
                //   color: 
                // ),    we can use it 
                accountName: Text("Harsha Vardhan"),
                accountEmail: Text("harshathokala9346@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                ),
                
              ),
      
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                ),
                
              ),
      
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email Us",
                  textScaleFactor: 1.3,
                  style: TextStyle(color: Colors.white),
                ),
                
              )
          ],// as multiple items are present , so children
        ),
      ),
    );
  }
}