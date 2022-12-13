import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek/components/login/loginComponen.dart';
import 'package:projek/components/register/registrasiComponen.dart';
import 'package:projek/Screens/login/loginScreens.dart';

// import '../../Response/UsersResponse.dart';
import '../../size_config.dart';
import '../../utils/constants.dart';
import '../custom_surfix_icon.dart';
import '../default_button_custom_color.dart';

class registerForm extends StatefulWidget {
  @override
  _registerForm createState() => _registerForm();
}

class _registerForm extends State<registerForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;

  FocusNode focusNode = new FocusNode();

  Response? response;
  var dio = Dio();

  @override
  void initState() {
    super.initState();
  }

  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController(),
      txtFullName = TextEditingController(),
      txtEmail = TextEditingController();
      

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUserFullNameFormField(),
          SizedBox(height: getProportionateScreenHeight(35)),
          buildUserNameFormField(),
          SizedBox(height: getProportionateScreenHeight(35)),
          buildUserEmailLengkapFormField(),
          SizedBox(height: getProportionateScreenHeight(35)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(35)),
          DefaultButtonCustomeColor(
            color: mCardTitleColor,
            text: "Register",
            press: () {
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
              // if all are valid then go to success screen
              prosesRegistrasi(txtFullName.text, txtUserName.text,
                  txtEmail.text, txtPassword.text);

              // }
            },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, loginScreen.routeName);
            },
            child: const Text(
              "Sudah punya akun ? Masuk Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      controller: txtPassword,
      onSaved: (newValue) => password = newValue,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Masukan password anda",
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kColorGreen),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildUserNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: txtUserName,
      onSaved: (newValue) => email = newValue,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Masukan username anda",
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kColorGreen),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildUserFullNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: txtFullName,
      onSaved: (newValue) => email = newValue,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: "Nama Lengkap",
        hintText: "Masukan nama lengkap",
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kColorGreen),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildUserEmailLengkapFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: txtEmail,
      onSaved: (newValue) => email = newValue,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Masukan email lengkap",
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? mSubtitleColor : kColorGreen),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  void prosesRegistrasi(namaLengkap, userName, email, password) async {
    utilsApps.showDialog(context);

    bool status;
    var msg;
    try {
      response = await dio.post('urlRegister', data: {
        'nama Lengkap': txtFullName,
        'usernama': userName,
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
          title: 'Peringatan',
          desc: 'Berhasil Registrasi',
          btnOkOnPress: () {
            utilsApps.hideDialog(context);
            Navigator.pushNamed(context, loginScreen.routeName);
          },
        ).show();
      } else {
        // print('Gagal Registrasi');

        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Peringatan',
          desc: 'Gagal Registrasi => $msg',
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
