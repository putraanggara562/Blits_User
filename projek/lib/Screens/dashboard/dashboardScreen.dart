import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek/components/dashboard/DrawerComponen.dart';
import 'package:projek/size_config.dart';

class dashboardScreen extends StatelessWidget {
  static String routeName = "/dashboard";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: DrawerComponent(),
    );
  }
}
