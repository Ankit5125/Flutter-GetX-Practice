import 'package:flutter/material.dart' hide Navigator, MediaQuery;
import 'package:getx_practice/Widgest/Navigator.dart';
import 'package:getx_practice/Widgest/DarkTheme.dart';
import 'package:getx_practice/Widgest/LightTheme.dart';
import 'package:getx_practice/Widgest/Snackbar.dart';
import 'package:getx_practice/Widgest/MediaQuery.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Practice")),
      body: Column(
        children: [
          MySnackBar(),
          LightTheme(),
          Darktheme(),
          Navigator(),
          MediaQuery(),
        ],
      ),
    );
  }
}
