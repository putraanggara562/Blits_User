import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pesanKendaraan extends StatefulWidget {
  const pesanKendaraan({super.key});

  @override
  State<pesanKendaraan> createState() => _pesanKendaraanState();
}

class _pesanKendaraanState extends State<pesanKendaraan> {
  final TextEditingController myControllerJemput = TextEditingController();
  final TextEditingController myControllerTujuan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pesan Kendaraan"), backgroundColor: Color.fromARGB(255, 83, 43, 228),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                TextField(
                  showCursor: true,
                  cursorColor: Colors.black,
                  controller: myControllerJemput,
                  decoration: InputDecoration(
                   hintText: "Lokasi Jemput"
                  ),
                  onChanged: (value) {
                    setState(() {
                    });
                    // print("");
                  },         
                ),
                 TextField(
                  showCursor: true,
                  cursorColor: Colors.black,
                  controller: myControllerTujuan,
                  decoration: InputDecoration(
                   hintText: "Alamat Tujuan"
                  ),
                  onChanged: (value) {
                    setState(() {});
                    // print("");
                  },
                ),
                Padding(padding: EdgeInsets.all(15)),
                 ElevatedButton(onPressed: () {}, child: Text("Pesan"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


