import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:demo/easy.dart';
import 'package:demo/hard.dart';
import 'package:demo/medium.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.transparent,
      child: Scaffold(
        backgroundColor: const Color(0xff00cccc),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: const Text(
                      "Rock Scissor Paper Game",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: Image.asset("assets/start.png")),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 17, 165, 165),
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xff00cccc),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: const Center(
                              child: Text(
                                "Select Level",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    fontStyle: FontStyle.italic),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Easy()));
                              },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Image.asset("assets/easy.png"),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Medium()));
                              },
                              child: SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.248,
                                child: Image.asset("assets/medium.png"),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Hard()));
                              },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.26,
                                child: Image.asset("assets/hard.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
