import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek/components/list_Pengendara/ListPesananComponen.dart';
import 'package:projek/size_config.dart';

class ListScreens extends StatelessWidget {
  static String routeName = "/list";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListPessananComponen(),
    );
  }
}
