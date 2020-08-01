import 'package:flutter/material.dart';
import 'package:logical_fallacies/Pages/Home.dart';
import 'package:logical_fallacies/Pages/SingleFallacy.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/singleFallacy': (context) => SingleFallacy(),
    },
  ));
}