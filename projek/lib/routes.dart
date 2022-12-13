import 'package:flutter/cupertino.dart';
import 'package:projek/Screens/dashboard/ListScreens.dart';
import 'package:projek/Screens/dashboard/Profile.Screens.dart';
import 'package:projek/Screens/dashboard/dashboardScreen.dart';
import 'package:projek/Screens/dashboard/pesanScreens.dart';
import 'package:projek/components/dashboard/PesanKendaraan.dart';
import 'package:projek/components/list_Pengendara/ListPesananComponen.dart';
import 'package:projek/Screens/login/loginScreens.dart';
import 'package:projek/Screens/register/RegistrasiScreens.dart';
import 'package:projek/components/profile/profileComponen.dart';

final Map<String, WidgetBuilder> routes = {
  loginScreen.routeName: (context) => loginScreen(),
  registerScreen.routeName: (context) => registerScreen(),
  dashboardScreen.routeName: (context) => dashboardScreen(),
  ListScreens.routeName: (context) => ListScreens(),
  ProfileScreens.routeName: (context) => Profile(),
  PesanKendaraan.routeName:(context) => pesanKendaraan()

  
};    