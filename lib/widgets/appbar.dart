import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.w200),
    ),
  );
}
