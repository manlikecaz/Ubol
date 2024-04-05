import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar:  AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 97, 110),
        title: const Text("Ubol"),
        actions: [  Center( child: 
          Image.asset("assets/letter-u.png")
        ),
    ]));
  }
}