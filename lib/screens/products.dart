// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:ozostore/screens/drawer.dart';
import 'package:ozostore/screens/profile.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Products> {
  List<String> pl = [
    "assets/phone2.png",
    "assets/phone1.png",
    "assets/phone2.png",
    "assets/phone3.jpg",
    "assets/phone4.jpg",
    "assets/phone5.jpg",
  ];

  List<String> pn = [
    "RedmiNote 10 Pro",
    "Realme Naro 15",
    "Samsung ultra 23",
    "One Plus+",
    "Oppo F13",
    "VIVO 789",
  ];

  List<String> pp = [
    "500000",
    "499999",
    "230000",
    "320000",
    "890000",
    "900000",
  ];
  List<String> pd = [
    "(Phantom Black 128gb)",
    "(Blue Ocean 128gb)",
    "(SilverBlack 68gb)",
    "(Light SKy 128gb)",
    "(Chocolate Pink 128gb)",
    "(Plain WHite 128gb)",
  ];
  List<String> pr = [
    "3.0",
    "4.5",
    "2.9",
    "4.6",
    "4.9",
    "2.8",
  ];
  List<String> prn = [
    "565656",
    "65454",
    "546456",
    "234345",
    "344565",
    "45456",
  ];
  List<String> pram = [
    "8",
    "16",
    "4",
    "5",
    "12",
    "9",
  ];
  List<String> prom = [
    "128",
    "566",
    "466",
    "556",
    "126",
    "943",
  ];
  List<String> pdisplay = [
    "16.67",
    "45.78",
    "23.67",
    "9.78",
    "14.78",
    "23.88",
  ];
  List<String> pcam = [
    "12",
    "48",
    "89",
    "23",
    "45",
    "54",
  ];
  List<String> pfcam = [
    "8",
    "12",
    "14",
    "15",
    "12",
    "19",
  ];

  List<Color> pc = [
    Colors.blue.shade100,
    Colors.purple.shade100,
    const Color.fromARGB(255, 218, 176, 205),
    const Color.fromARGB(255, 218, 190, 190),
    const Color.fromARGB(255, 204, 236, 203),
    const Color.fromARGB(255, 245, 175, 146),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Builder(builder: (ctx) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " Category",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.filter_list_outlined),
                            Text(" Filter"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: MediaQuery.of(context).size.height - 180,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.57,
                            crossAxisCount: 2,
                            crossAxisSpacing: 13.0,
                            mainAxisSpacing: 12.0,
                          ),
                          itemCount: pl.length,
                          itemBuilder: (context, index) {
                            return myWidget(context, index);
                          }),
                    ),
                  ]),
            ),
          );
        }),
      ),
    );
  }

  Widget myWidget(BuildContext context, index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Profilepage(),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: pc[index],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                pl[index],
                height: 130,
                width: 110,
              ),
              Text(
                pn[index],
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text(
                pd[index],
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.yellow),
                    child: Row(
                      children: [
                        Text(
                          pr[index] + " ",
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        const Icon(
                          Icons.star_outlined,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                  Text(
                    " " + prn[index] + " Ratings ",
                    style: const TextStyle(fontSize: 9),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(" ₹ "),
                  Text(
                    pp[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    size: 10,
                  ),
                  Text(
                    " " +
                        pram[index] +
                        "GB RAM |" +
                        " " +
                        prom[index] +
                        "GB ROM ",
                    style: const TextStyle(fontSize: 9),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    size: 10,
                  ),
                  Text(
                    " " + pdisplay[index] + "cm Full HD" + " ",
                    style: const TextStyle(fontSize: 9),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.circle,
                    size: 10,
                  ),
                  Text(
                    " " +
                        pdisplay[index] +
                        " |" +
                        pfcam[index] +
                        " Front Camera",
                    style: const TextStyle(fontSize: 9),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
