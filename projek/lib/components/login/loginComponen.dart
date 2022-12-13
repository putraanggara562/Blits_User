import 'package:flutter/material.dart';
import 'package:projek/components/login/loginForm.dart';
import 'package:projek/size_config.dart';
import 'package:projek/utils/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';

class loginComponent extends StatefulWidget {
  @override
  _loginComponent createState() => _loginComponent();
}

class _loginComponent extends State<loginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight *
                      0.04, //codingan jarak bagian atas
                ),
                SizedBox(
                  height: SizeConfig.screenHeight *
                      0.04, //codingan jarak bagian atas
                ),
                SimpleShadow(
                  child: Image.asset(
                    ('assets/image/ambulance.png'),
                    height: 200,
                    width: 200,
                  ), //panggil logo
                  opacity: 0.5,
                  color: kSecondaryColor,
                  offset: Offset(5, 5),
                  sigma: 2,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "login",
                          style: mTitleStyle,
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                SignInform()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
