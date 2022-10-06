// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:demo/start.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class Medium extends StatefulWidget {
  const Medium({Key? key}) : super(key: key);

  @override
  State<Medium> createState() => _MediumState();
}

class _MediumState extends State<Medium> {
  var btnrdm;
  var comp = 0;
  var player1 = 0;
  var cmpt = 0;
  var ply = 0;
  var player;
  cmp() {
    setState(() {
      Random random = Random();
      btnrdm = random.nextInt(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.transparent,
      child: Scaffold(
        backgroundColor: const Color(0xff009999),
        // (0xffffe699),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Start())));
              },
              icon: const Icon(Icons.arrow_back)),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff006666),
          title: const Center(
              child: Text(
            "Rock Paper Scissor",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )),
          actions: const [Text("        ")],
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 20, 199, 199),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: const Center(
                  child: Text(
                    "Medium Level",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                  ),
                )),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xff006666),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Player 1 Score",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "$player1/3",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      )),
                    ),
                    // SizedBox(),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xff006666),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Computer Score",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "$comp/3",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.65,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 20, 199, 199),
                      // (0xfffff2cc),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      color: Color(0xff006666),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text(
                                            "Player 1",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic),
                                          ),
                                          Text(
                                            "Computer",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (player == 1) ...{
                                  Image.asset("assets/paper.png"),
                                  const Text(
                                    "Paper",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                } else if (player == 2) ...{
                                  Image.asset("assets/scissor.png"),
                                  const Text(
                                    "Scissor",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                } else if (player == 0) ...{
                                  Image.asset("assets/rock.png"),
                                  const Text(
                                    "Rock",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                } else ...{
                                  const Text(
                                    "Select",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                }
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (btnrdm == 0) ...{
                                  Image.asset("assets/paper.png"),
                                  const Text(
                                    "Paper",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                } else if (btnrdm == 1) ...{
                                  Image.asset("assets/scissor.png"),
                                  const Text(
                                    "Scissor",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                } else if (btnrdm == 2) ...{
                                  Image.asset("assets/rock.png"),
                                  const Text(
                                    "Rock",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                } else ...{
                                  const Text(
                                    "Auto Select",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                }
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(""),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        InkWell(
                          onTap: () {
                            cmp();
                            setState(() {
                              player = 0;
                              if (btnrdm == 2) {
                              } else if (btnrdm == 0) {
                                setState(() {
                                  comp = comp + 1;
                                  if (comp == 3) {
                                    youlose();
                                  }
                                });
                              } else if (btnrdm == 1) {
                                setState(() {
                                  player1 = player1 + 1;
                                  if (player1 == 3) {
                                    youwin();
                                  }
                                });
                              }
                            });
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                  radius: 50,
                                  backgroundColor: const Color(0xff006666),
                                  child: Image.asset("assets/rock.png")),
                              const Text(
                                "Rock",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            cmp();
                            setState(() {
                              player = 1;
                              if (btnrdm == 1) {
                                comp = comp + 1;
                                if (comp == 3) {
                                  youlose();
                                }
                              } else if (btnrdm == 2) {
                                setState(() {
                                  player1 = player1 + 1;

                                  if (player1 == 3) {
                                    youwin();
                                  }
                                });
                              }
                            });
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                  radius: 50,
                                  backgroundColor: const Color(0xff006666),
                                  child: Image.asset("assets/paper.png")),
                              const Text(
                                "Paper",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            cmp();
                            setState(() {
                              player = 2;
                              if (btnrdm == 2) {
                                comp = comp + 1;
                                if (comp == 3) {
                                  youlose();
                                }
                              } else if (btnrdm == 0) {
                                player1 = player1 + 1;
                                if (player1 == 3) {
                                  youwin();
                                }
                              }
                            });
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                  radius: 50,
                                  backgroundColor: const Color(0xff006666),
                                  child: Image.asset("assets/scissor.png")),
                              const Text(
                                "Scissor",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void youlose() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color(0xffADD8E6),
            title: const Center(
              child: Text(
                "You Lose",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            content: Container(
              height: 0,
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Start()));
                },
                child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text("Home",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Medium()));
                },
                child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xff32CD32),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      "Play Again",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
              ),
            ],
          );
        });
    comp = comp + cmpt;
    player1 = player1 + ply;

    player1 = 0;
    comp = 0;
  }

  void youwin() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color(0xffADD8E6),
            title: const Center(
              child: Text(
                "You Win",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            content: Container(
              height: 0,
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Start()));
                },
                child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text("Home",
                            style: TextStyle(fontWeight: FontWeight.bold)))),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Medium()));
                },
                child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xff32CD32),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      "Play Again",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
              ),
            ],
          );
        });
    comp = comp + cmpt;
    player1 = player1 + ply;

    player1 = 0;
    comp = 0;
  }
}
