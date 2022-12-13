import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek/Screens/dashboard/dashboardScreen.dart';
import 'package:projek/components/custom_surfix_icon.dart';
import 'package:projek/components/default_button_custom_color.dart';
import 'package:projek/Screens/register/RegistrasiScreens.dart';
import 'package:projek/size_config.dart';
import 'package:projek/utils/constants.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remeber = false;

  TextEditingController txtemail =
          TextEditingController(), //menampung isi dari nilai di dalam form
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  Response? response;
  var dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(), //memanggil build username
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remeber,
                  onChanged: (value) {
                    setState(() {
                      remeber = true;
                    });
                  }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: mCardTitleColor,
            text: "Masuk",
            press: () {
              // Navigator.pushReplacementNamed(
              //     context, dashboardScreen.routeName);
              prosesLogin(txtemail.text, txtPassword.text);
            },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,
                  registerScreen.routeName); //berpindah ke halaman regis
            },
            child: Text(
              "Belum Punya Akun ? Daftar Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  //membuat inputan
  TextFormField buildUserName() {
    return TextFormField(
      controller:
          txtemail, //panggil txtUserName di var TextEditingController
      keyboardType: TextInputType.text, // menginput angka huruf dan karakter
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Masukan Email Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kColorRedSlow),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  //membuat password
  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true, //membuat tulisan tidak terlihat
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kColorRedSlow),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  void prosesLogin(email, password) async {
    utilsApps.showDialog(context);

    bool status;
    var msg;
    var dataUser;
    try {
      response = await dio.post('urlLogin', data: {
        'email': email,
        'password': password,
      });
      status = response!.data['sukses'];
      msg = response!.data['msg'];
      if (status) {
        // print('Berhasil Registrasi');

        AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.rightSlide,
          // title: 'Peringatan',
          desc: 'Berhasil Login',
          btnOkOnPress: () {
            utilsApps.hideDialog(context);
            dataUser = response!.data['data'];
            if (dataUser['role'] == 2) {
              // print("Lempar Ke User");
            } else {
              // print("Lempar Ke Halaman Admin");
            }
            Navigator.pushNamed(context, dashboardScreen.routeName);
          },
        ).show();
      } else {
        // print('Gagal Registrasi');

        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Peringatan',
          desc: 'Gagal Login => $msg',
          btnOkOnPress: () {
            utilsApps.hideDialog(context);
          },
        ).show();
      }
    } catch (e) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'Peringatan',
        desc: 'Terjadi Kesalahan Pada Server',
        btnOkOnPress: () {
          utilsApps.hideDialog(context);
        },
      ).show();
    }
  }
}
