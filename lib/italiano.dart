import 'package:flutter/material.dart';
import 'package:ubol/cart.dart';class Italiano extends StatefulWidget {
  const Italiano({super.key});

  @override
  State<Italiano> createState() => _ItalianoState();
}

class _ItalianoState extends State<Italiano> {
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
                      text: "Welcome to Italiano Pizza.",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )
                    )), const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
                      Row(
                        children: [
                          Image.asset("assets/italianooriginal.png"),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Italiano Original",
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
                          Image.asset("assets/italianoolive.png",
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Italiano olive Pizza ",
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
                          Image.asset("assets/italianozing.png",
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Italiano Zing Pizza",
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
                          Image.asset("assets/italianochicken.png"),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Italiano Chaicken Pizza",
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
    