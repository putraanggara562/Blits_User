
import 'package:flutter/material.dart';
import 'package:projek/Screens/dashboard/ListScreens.dart';
import 'package:projek/Screens/dashboard/Profile.Screens.dart';
import 'package:projek/Screens/dashboard/dashboardScreen.dart';
import 'package:projek/Screens/dashboard/pesanScreens.dart';
import 'package:projek/components/list_Pengendara/ListPesananComponen.dart';
import 'package:projek/components/dashboard/Map.dart';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({super.key});

  @override
  State<DrawerComponent> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 239, 240, 239),
        child: Column(
          children: [
            Container(
              // height: 200,
              width: double.infinity,
              // color: Colors.green,
              child: _drawerHeader(),
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  onTap: () {
                   Navigator.pushNamed(context,
                  dashboardScreen.routeName);
                  },
                  leading: Icon(Icons.location_on),
                  title: Text("Dashboard"),
                ),
                ListTile(
                  onTap: () {
                   Navigator.pushNamed(context,
                  PesanKendaraan.routeName);
                   },
                  leading: Icon(Icons.car_crash),
                  title: Text("Pesan Kendaraan"),
                ),
                ListTile(
                  onTap: () {
                   Navigator.pushNamed(context,
                  ListScreens.routeName);
                   },
                  leading: Icon(Icons.list),
                  title: Text("List Pemesanan"),
                ),
                ListTile(
                   onTap: () {
                   Navigator.pushNamed(context,
                  ProfileScreens.routeName);
                   },
                  leading: Icon(Icons.settings),
                  title: Text("Profil Pengguna"),
                ),
                Divider(
                  height: 25,
                  thickness: 3,
                ),
                // ListTile(
                //   leading: Icon(Icons.logout),
                //   title: Text("Keluar"),
                ElevatedButton(
                  
                  onPressed: () {}, child:  Text("Keluar"))
                // ),
              ],
            ))
          ],
        ),
      ),
      body: Center(child: MapPage()), //memanggil file map.dart
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
        currentAccountPicture: ClipOval(
          child: Image(
            image: AssetImage("assets/image/ambulance.png"),
            fit: BoxFit.fill,
          ),
        ),
        accountName: Text("Blits"),
        accountEmail: Text("Selamat Datang"));
  }
}
