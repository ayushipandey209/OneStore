// ignore_for_file: unused_import, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:ozostore/screens/EmailVeri.dart';
import 'package:ozostore/screens/dashboard.dart';
import 'package:ozostore/screens/products.dart';
import 'package:ozostore/screens/profile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: const Color.fromARGB(255, 94, 102, 211),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xff35396E),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: const CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage("assets/Group.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Name : XYZfdgdhfbgvhdf ",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Mobile No : 9856452315 ",
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
          ]),
          ListTile(
            title: const Text(
              style: TextStyle(color: Colors.white),
              'Home Page',
            ),
            leading: const Icon(
              size: 38,
              Icons.home,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                  // ignore: prefer_const_constructors
                  context,
                  MaterialPageRoute(builder: (context) => DashBoard()));
            },
          ),
          ListTile(
            title:
                const Text(style: TextStyle(color: Colors.white), 'My Profile'),
            leading: const Icon(
              Icons.perm_contact_cal,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profilepage()));
            },
          ),
          ListTile(
            title: const Text(
                style: TextStyle(color: Colors.white), 'Notification'),
            leading: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title:
                const Text(style: TextStyle(color: Colors.white), 'Appliances'),
            leading: const Icon(
              Icons.inventory,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                  // ignore: prefer_const_constructors
                  context,
                  MaterialPageRoute(builder: (context) => Products()));
            },
          ),
          ListTile(
            title: const Text(style: TextStyle(color: Colors.white), 'Mobile'),
            leading: const Icon(
              Icons.phone_android,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(style: TextStyle(color: Colors.white), 'Setting'),
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
                style: TextStyle(color: Colors.white), 'Customer Service'),
            leading: const Icon(
              Icons.headset_mic,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                  // ignore: prefer_const_constructors
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()));
            },
          )
        ],
      ),
    ));
  }
}
