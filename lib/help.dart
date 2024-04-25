import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 111, 111, 126),
          title: const Text("Ubol"),
          titleTextStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 29,
          ),
          actions: [Image.asset("assets/profile.png")],
        ),
    );
  }
}