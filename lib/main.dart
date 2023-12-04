import 'package:flutter/material.dart';

import 'home/presenter/home_view.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeView(),
    debugShowCheckedModeBanner: false,
  ));
}