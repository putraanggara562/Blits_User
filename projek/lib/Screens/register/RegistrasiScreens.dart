// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek/components/register/registrasiComponen.dart';
// import 'package:projek/components/login/loginComponen.dart';
import 'package:projek/size_config.dart';

class registerScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: registrasiComponent(),
    );
  }
}
