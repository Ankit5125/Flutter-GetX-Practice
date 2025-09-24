import 'package:flutter/material.dart';
import 'package:getx_practice/Screens/GotoCard/GotoCard.dart';
import 'package:getx_practice/Widgest/DarkTheme.dart';
import 'package:getx_practice/Widgest/LightTheme.dart';
import 'package:getx_practice/Widgest/Snackbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Practice")),
      body: Column(
        children: [MySnackBar(), LightTheme(), Darktheme(), GotoCard()],
      ),
    );
  }
}
