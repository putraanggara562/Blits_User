import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projek/components/list_Pengendara/menunggu.dart';
import 'package:projek/components/list_Pengendara/selesai.dart';

class buttomNav extends StatefulWidget {
  const buttomNav({super.key});

  @override
  State<buttomNav> createState() => _buttomNavState();
}

class _buttomNavState extends State<buttomNav> {
  int currentIndex = 0;
  final List<Widget> body = [Menunggu(), Selesai()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.lightBlueAccent,
              ),
              label: "Menunggu",
              activeIcon: Icon(
                Icons.home_outlined,
                color: Color.fromARGB(255, 236, 5, 43),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.done,
                color: Colors.lightBlueAccent,
              ),
              label: "Selesai",
              activeIcon: Icon(
                Icons.done,
                color: Color.fromARGB(255, 236, 5, 43)
              ))
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
