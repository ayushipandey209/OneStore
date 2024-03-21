// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ozostore/screens/drawer.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

final PageController pg = PageController(initialPage: 0);

class _DashBoardState extends State<DashBoard> {
  List<String> brandImages = [
    "assets/samsung.png",
    "assets/vivo.png",
    "assets/realme.png",
    "assets/oneplus.png",
    "assets/apple.png",
    "assets/poco.png",
  ];

  List<String> pp = [
    "assets/offer.jpg",
    "assets/offer1.jpg",
    "assets/offer2.jpg",
    "assets/offer3.jpg",
    "assets/offer5.jpeg",
  ];

  List<String> cl = [
    "assets/phone.jpg",
    "assets/phone1.png",
    "assets/phone2.png",
    "assets/phone3.jpg",
    "assets/phone4.jpg",
    "assets/phone5.jpg",
  ];

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (activepage < pp.length) {
        setState(() {
          activepage++;
        });
      } else {
        setState(() {
          activepage = 0;
        });
      }
      pg.animateToPage(activepage,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    });
  }

  var activepage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: const Color.fromARGB(255, 201, 193, 241),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Builder(builder: (ctx) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Scaffold.of(ctx).openDrawer(),
                        child: CircleAvatar(
                          maxRadius: 30,
                          minRadius: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              "assets/Group.png",
                              //  height: 50,
                            ),
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.location_on),
                          Text("Kausa,Thane")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/DbLogo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              hintText: 'Search...',
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.filter_list,
                              size: 38,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Brand",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to view all brands screen
                          },
                          child: Text("View all"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: brandImages.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              brandImages[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Popular Brand",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text("View all")
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                      width: double.infinity,
                      child: PageView.builder(
                        controller: pg,
                        pageSnapping: true,
                        onPageChanged: (value) {
                          setState(() {
                            activepage = value;
                          });
                        },
                        itemCount: pp.length,
                        itemBuilder: (context, index) {
                          return Container(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Image.asset(pp[index],
                                      fit: BoxFit.fill)));
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.category_outlined),
                          Text(
                            " Category",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text("View all")
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 240,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemCount: cl.length,
                        itemBuilder: (context, index) {
                          return myWidget(context, index);
                        }),
                  ),
                  Text("data")
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget myWidget(BuildContext context, index) {
    return Container(
      color: Colors.black12,
      child: Image.asset(cl[index], fit: BoxFit.fill),
    );
  }
}
