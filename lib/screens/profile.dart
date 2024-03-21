import 'package:flutter/material.dart';
import 'package:ozostore/utils/theme.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 215, 221, 241),
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const CircleAvatar(
                    maxRadius: 36,
                    backgroundImage: AssetImage("assets/cat.jpg"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 11),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mr Cat",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("cat20903@gmail.com")
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Basic Details",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        Text("Edit Profile", style: TextStyle(fontSize: 11))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 35,
                            ),
                            Text(
                              " Name : ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Capsicum Cat")
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              size: 35,
                            ),
                            Text(" Number : ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("123456789")
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              size: 35,
                            ),
                            Text(" Email : ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("cat20903@gmail.com")
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 179, 175, 175),
                                width: 1.5))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Favourite",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 35,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 35,
                              ),
                              Text(" Liked",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye,
                                size: 35,
                              ),
                              Text(" Recent View",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled_outlined,
                                size: 35,
                              ),
                              Text(" Enquiry History",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 179, 175, 175),
                                width: 1.5))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Customer Care",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.headset_mic_rounded,
                                size: 35,
                              ),
                              Text(" Contact Us",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: 35,
                              ),
                              Text(" Email",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 48,
                      width: 320,
                      decoration: BoxDecoration(
                          color: splashScreenBg,
                          borderRadius: BorderRadius.circular(6)),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
