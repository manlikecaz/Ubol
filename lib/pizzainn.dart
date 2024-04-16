import 'package:flutter/material.dart';
import 'package:ubol/cart.dart';

class PizzaInn extends StatefulWidget {
  const PizzaInn({super.key});

  @override
  State<PizzaInn> createState() => _PizzaInnState();
}

class _PizzaInnState extends State<PizzaInn> {
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
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.grey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsetsDirectional.all(50),
            child: Column(
              children: [
                const Padding(padding: EdgeInsetsDirectional.all(30)),
                Row(children: [
                  Image.asset("assets/margherita.png"),
                  const Padding(padding: EdgeInsets.all(30)),
                  RichText(
                    text: const TextSpan(
                      text: " Margherita pizza.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.all(20),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return Cart();   
                        }));
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Add to cart")),
                ]),
                const Padding(padding: EdgeInsetsDirectional.only()),
                Row(children: [
                  const Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 290)),
                  Image.asset("assets/napoleon.png"),
                  const Padding(padding: EdgeInsets.all(30)),
                  RichText(
                    text: const TextSpan(
                      text: " Napoleon pizza.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.all(20),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return Cart(); 
                      }));
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Add to cart")),
                ]),
                const Padding(padding: EdgeInsetsDirectional.only(bottom: 10)),
                Row(children: [
                  Image.asset("assets/loaded.png"),
                  const Padding(padding: EdgeInsets.all(30)),
                  RichText(
                    text: const TextSpan(
                      text: " Loaded pizza.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.all(20),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return Cart(); 
                      }));
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Add to cart")),
                ]),
                const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
                Row(children: [
                  Image.asset("assets/gazib.png"),
                  const Padding(padding: EdgeInsets.all(30)),
                  RichText(
                    text: const TextSpan(
                      text: " Gazib pizza.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.all(20),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return Cart(); 
                      }));
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Add to cart")),
                ]),
              ],
            ),
          ),
        ));
  }
}
