import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menunggu extends StatefulWidget {
  const Menunggu({super.key});

  @override
  State<Menunggu> createState() => _MenungguState();
}

class _MenungguState extends State<Menunggu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Menunggu Pesanan"),
    );
  }
}