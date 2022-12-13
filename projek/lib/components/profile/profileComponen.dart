import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile Pengendara"),
          backgroundColor: Color.fromARGB(255, 236, 5, 43)
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  // backgroundImage: AssetImage(""),
                  radius: 70.0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                      // hintText: email,
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.blue,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Phone",
                      // hintText: No-telepon,
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.phone,
                        color: Colors.blue,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
