import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

 
  @override
  State<Cart> createState() => _Cartstate();
}

class _Cartstate extends State<Cart> {
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