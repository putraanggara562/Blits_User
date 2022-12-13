import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Selesai extends StatefulWidget {
  const Selesai({super.key});

  @override
  State<Selesai> createState() => _SelesaiState();
}

class _SelesaiState extends State<Selesai> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Selesai"),
    );
  }
}