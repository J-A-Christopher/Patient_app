import 'package:flutter/material.dart';
import 'package:flutter_jap_icons/medical_icons_icons.dart';

TextEditingController searchEditingController = TextEditingController();

class Home extends StatelessWidget {
  final String nameEditingController;
  const Home({required this.nameEditingController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1D35),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text('Hi $nameEditingController !',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  height: 65,
                  width: 65,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: const Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Text(
              'Keep taking \n care of your health.',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: searchEditingController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF0a2351),
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'Search anything here... ',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.green,
                    highlightColor: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueGrey),
                          child: const Icon(
                            Icons.hearing,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Ear',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.green,
                    highlightColor: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueGrey),
                          child: const Icon(
                            Icons.heart_broken,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Heart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.green,
                    highlightColor: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueGrey),
                          child: const Icon(
                            Icons.health_and_safety,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Brain',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.green,
                    highlightColor: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueGrey),
                          child: const Icon(
                            MedicalIcons.i_kidney,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Kidney',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.green,
                    highlightColor: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueGrey),
                          child: const Icon(
                            MedicalIcons.i_womens_health,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Gyno',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.green,
                    highlightColor: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blueGrey),
                          child: const Icon(
                            Icons.child_care,
                            color: Colors.white,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Pediatrician',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
              child: Text(
                'Doctors Near You',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.asset(
                            'Assets/img/doc1.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 18,
                          left: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: SizedBox(
                              width: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black45),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.call,
                                  )),
                            ),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        height: 200,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.asset(
                            'Assets/img/doc2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 18,
                          left: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: SizedBox(
                              width: 50,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black45),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.call,
                                  )),
                            ),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
