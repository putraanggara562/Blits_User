import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../size_config.dart';
import '../../utils/constants.dart';
import 'RegistrasiForm.dart';

class registrasiComponent extends StatefulWidget {
  @override
  _registrasiComponent createState() => _registrasiComponent();
}

class _registrasiComponent extends State<registrasiComponent> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Registrasi', style: mTitleStyle),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                registerForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}