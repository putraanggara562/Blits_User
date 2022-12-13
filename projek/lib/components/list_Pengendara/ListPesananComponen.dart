import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projek/components/list_Pengendara/button_nav.dart';

class ListPessananComponen extends StatefulWidget {
  const ListPessananComponen({super.key});

  @override
  State<ListPessananComponen> createState() => _ListPessananComponenState();
}

class _ListPessananComponenState extends State<ListPessananComponen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: (""),
      theme: ThemeData(),
      home:buttomNav() ,
    );
  }
}
