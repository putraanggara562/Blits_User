import 'package:flutter/material.dart';
import 'package:projek/Screens/login/loginScreens.dart';
import 'package:projek/routes.dart';
import 'package:projek/theme.dart';

void main() async {
  runApp(MaterialApp(
    title: "User",
    theme: theme(),
    initialRoute: loginScreen.routeName,
    debugShowCheckedModeBanner: false,
    routes: routes,
  ));
}
