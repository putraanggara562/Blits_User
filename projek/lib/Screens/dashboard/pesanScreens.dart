import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:projek/components/profile/profileComponen.dart';
import 'package:projek/components/dashboard/PesanKendaraan.dart';
import 'package:projek/size_config.dart';

class PesanKendaraan extends StatelessWidget {
  static String routeName = "/pesan";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: pesanKendaraan(),
    );
  }
}
