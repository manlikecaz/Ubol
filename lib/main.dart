
import 'package:flutter/material.dart';



import 'package:ubol/splashscreen.dart';




void main() async {
     
   
  
  runApp(const Ubol());
}

class Ubol extends StatelessWidget {
  const Ubol({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp( 
      debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
 
  
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      
    );
  }
}