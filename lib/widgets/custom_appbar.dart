import 'package:flutter/material.dart';

class CustomAppBar {

  static AppBar appBar(String name) => AppBar(
    title: Text(name),
    centerTitle: true,
  );

}