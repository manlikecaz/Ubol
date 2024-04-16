import 'package:flutter/material.dart';
import 'package:ubol/cart.dart';
class BigSquare extends StatefulWidget {
  const BigSquare({super.key});

  @override
  State<BigSquare> createState() => _BigSquareState();
}

class _BigSquareState extends State<BigSquare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 97, 110),
          title: const Text("Ubol"),
          actions: [
            Row(children: [
              Image.asset("assets/letter-u.png"),
              const Padding(padding: EdgeInsetsDirectional.only(start: 290)),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Cart();
                  }));
                },
                child: const Icon(Icons.shopping_cart),
              ),
            ])
          ],
      ),
    
      body: SingleChildScrollView(
        child: 
          Container(padding: const EdgeInsets.all(30), 
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [ Colors.black , Colors.blueGrey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
                 )
              ),
              child: Column(
                children: [
                  RichText(text: const TextSpan(
                    text: "Welcome to bigsquare,",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  ),
                  const Padding(padding: EdgeInsetsDirectional.only(bottom: 40)),
                  Row(
                    children: [
                      Image.asset("assets/chipsandribs.png"),
                    const   Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  RichText(text:const  TextSpan(
                    text: "Loaded fries and ribs",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  ),
                  const Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                     return const Cart(); 
                          }
                        )
                      );
                    }, child: const Icon(Icons.shopping_cart))
                  ],
                ), 
                 const Padding(padding: EdgeInsetsDirectional.only(bottom: 40)),
                  Row(
                    children: [
                      Image.asset("assets/wingsspec.png",width: 240,
                      ),
                    const   Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  RichText(text:const  TextSpan(
                    text: "Loaded fries and wings",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  ),
                  const Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                     return const Cart(); 
                    }));
                  }, child: const Icon(Icons.shopping_cart))
                ],
              ),
               const Padding(padding: EdgeInsetsDirectional.only(bottom: 40)),
                  Row(
                    children: [
                      Image.asset("assets/burger.png"),
                    const   Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  RichText(text:const  TextSpan(
                    text: "Loaded fries and burger",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  ),
                  const Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                     return const Cart(); 
                    }));
                  }, child: const Icon(Icons.shopping_cart))
                ],
              ),
               const Padding(padding: EdgeInsetsDirectional.only(bottom: 40)),
                  Row(
                    children: [
                      Image.asset("assets/pizzamojo.png"),
                    const   Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  RichText(text:const  TextSpan(
                    text: "Loaded fries and mojo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  ),
                  const Padding(padding: EdgeInsetsDirectional.only(start: 40)),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                     return const Cart(); 
                    }));
                  }, child: const Icon(Icons.shopping_cart))
                ],
              ),
              ]
            )
          ),
      ),
    ); 
  }
}