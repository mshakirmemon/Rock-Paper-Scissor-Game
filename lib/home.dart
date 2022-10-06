// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:demo/medium.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var btnrdm;
  var comp = 0;
  var player1 = 0;

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
            // automaticallyImplyLeading: false,
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
          body: const Medium()),
    );
  }
}
