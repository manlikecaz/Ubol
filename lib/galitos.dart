import 'package:flutter/material.dart';
import 'package:ubol/cart.dart';
class Galitos extends StatefulWidget {
  const Galitos({super.key});

  @override
  State<Galitos> createState() => _GalitosState();
}

class _GalitosState extends State<Galitos> {
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
                      text: "Welcome to Galitos.",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )
                    )), const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
                      Row(
                        children: [
                          Image.asset("assets/halfitout.png"),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Fries and half a chicken",
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
                          Image.asset("assets/familyplatter.png",
                          width: 230,
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Family platter share ",
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
                          Image.asset("assets/zazter.png"),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Fries, full chicken burger and soda",
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
                          Image.asset("assets/loadedkamza.png"),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
                          RichText(text: const TextSpan(
                            text: "Fries and three pieces of chicken",
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
  
  
