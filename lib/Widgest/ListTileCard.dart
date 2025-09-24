import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileCard extends StatelessWidget {
  String string;
  Function() onTap;
  ListTileCard({required this.string, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(title: Text(string), onTap: onTap),
    ).paddingOnly(top: 5, left: 5, right: 5);
  }
}
