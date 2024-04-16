import 'package:flutter/material.dart';
import 'package:ubol/cart.dart';


 

class Pizzahut extends StatefulWidget {
  const Pizzahut({super.key});

  @override
  State<Pizzahut> createState() => _PizzahutState();
}

class _PizzahutState extends State<Pizzahut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    children: [ RichText(text: const TextSpan(
                      text: "Welcome to Pizza hut.",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )
                    )), const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
                      Row(
                        children: [
                          Image.asset("assets/pepperroni.png"),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Pepperroni pizza ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          ElevatedButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                              return const Cart();
                            }));
                          }, child: const Icon(Icons.shopping_cart))
                        ],
                      ),
                      const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
                      Row(
                        children: [
                          Image.asset("assets/palachino.png",
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Palachino pizza ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          ElevatedButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                              return const Cart();
                            }));
                          }, child: const Icon(Icons.shopping_cart))
                        ],
                      ),
                      const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
                      Row(
                        children: [
                          Image.asset("assets/original.png", width: 260,),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Original Pizza",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          ElevatedButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                              return const Cart();
                            }));
                          }, child: const Icon(Icons.shopping_cart))
                        ],
                      ),
                      const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
                      Row(
                        children: [
                          Image.asset("assets/maccoroni.png"),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Maccoroni pizza",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          ElevatedButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                              return const Cart();
                            }));
                          }, child: const Icon(Icons.shopping_cart))
                        ],
                      ),
                    ],
                  ),
             ),  
     ),
    );
  }
}
    