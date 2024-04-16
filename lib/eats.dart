import 'package:flutter/material.dart';
import 'package:ubol/bigsquare.dart';
import 'package:ubol/chickeninn.dart';
import 'package:ubol/galitos.dart';
import 'package:ubol/home.dart';
import 'package:ubol/italiano.dart';
import 'package:ubol/pizzahut.dart';
import 'package:ubol/pizzainn.dart';

class Eats extends StatefulWidget {
  const Eats({super.key});

  @override
  State<Eats> createState() => _EatsState();
}

class _EatsState extends State<Eats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color:   Color.fromARGB(198, 234, 173, 167)),
              child: Text("Drawer Header"),
            ),
            ListTile(
              leading: const Icon(Icons.home_filled),
              iconColor:  const Color.fromARGB(198, 234, 173, 167),
              tileColor: Colors.black,
              textColor:  const Color.fromARGB(198, 234, 173, 167),
              title: const Text("Home"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Home();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10.0)),
            ListTile(
              leading: const Icon(
                Icons.food_bank_sharp,
              ),
              iconColor:  const Color.fromARGB(198, 234, 173, 167),
              title: const Text("Pizza Inn"), 
              tileColor: Colors.black,
              textColor:  const Color.fromARGB(198, 234, 173, 167),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Pizzahut();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10.0)),
            ListTile(
              leading: const Icon(
                Icons.food_bank_sharp,
              ),
              iconColor:  const Color.fromARGB(198, 234, 173, 167),
              title: const Text("Galitos"),
              tileColor: Colors.black,
              textColor:  const Color.fromARGB(198, 234, 173, 167),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Galitos();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10.0)),
            ListTile(
              leading: const Icon(Icons.food_bank_outlined),
              iconColor:  const Color.fromARGB(198, 234, 173, 167),
              title: const Text("Chicken inn"),
              tileColor: Colors.black,
              textColor:  const Color.fromARGB(198, 234, 173, 167),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const ChickenInn();
                  }),
                );
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10.0)),
            ListTile(
              leading: const Icon(Icons.food_bank_outlined),
              iconColor:  const Color.fromARGB(198, 234, 173, 167),
              title: const Text("Pizza Hut"),
              tileColor: Colors.black,
              textColor:  const Color.fromARGB(198, 234, 173, 167),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Pizzahut();
                    },
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10.0)),
            ListTile(
              leading: const Icon(Icons.food_bank_outlined),
              iconColor:  const Color.fromARGB(198, 234, 173, 167),
              title: const Text("Big Square"),
              tileColor: Colors.black,
              textColor:  const Color.fromARGB(198, 234, 173, 167),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const BigSquare();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 97, 110),
        title: const Text("Ubol"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomDelegateSearch());
              },
              icon: const Icon(Icons.search)),
          Image.asset("assets/letter-u.png"),
        ],
      ), 
      
      
      body:  SingleChildScrollView(
        child: Container(width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black,Colors.blueGrey],
          begin:  Alignment.topRight,
          end: Alignment.bottomLeft,
          )
        ),
          child: Column( 
            children: [
              
              
                 Row(
                  children: [const Padding(padding: EdgeInsetsDirectional.only(start: 20)),
                    Image.asset("assets/pizzainn.png",width: 250,height: 250,),                
                         const Padding(padding: EdgeInsetsDirectional.only(start: 40),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const PizzaInn();
                              },
                            ),
                          );
                         const Padding(padding: EdgeInsetsDirectional.all(200),);
                        },
                        child: const Text("Pizza inn")),
                   const Padding(padding: EdgeInsets.only(left: 30)),
                    Image.asset("assets/galitos.png",
                    width: 250,
                    height: 250
                    ,)
                    ,                
                         const Padding(padding: EdgeInsets.only(left:20),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Galitos();
                              },
                            ),
                          );
                         const Padding(padding: EdgeInsetsDirectional.all(200),);
                        },
                        child: const Text("Galitos")),
                     
                     
                  ],
                
                 
                ),
                 Row(
                  children: [const Padding(padding: EdgeInsetsDirectional.all(10)),
                    Image.asset("assets/chickeninn.png",width: 250,height: 250,),                
                         const Padding(padding: EdgeInsetsDirectional.only(end: 20),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const ChickenInn();
                              },
                            ),
                          );
                         const Padding(padding: EdgeInsetsDirectional.all(200),);
                        },
                        child: const Text("Chicken inn")),
                   const Padding(padding: EdgeInsets.only(left: 30)),
                    Image.asset("assets/pizzahut.png",
                    width: 250,
                    height: 250
                    ,)
                    ,                
                         const Padding(padding: EdgeInsets.only(left:20),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Pizzahut();
                              },
                            ),
                          );
                         const Padding(padding: EdgeInsetsDirectional.all(200),);
                        },
                        child: const Text("Pizzahut ")),
                     
                     
                  ],
                
                 
                ),
                Row(
                  children: [const Padding(padding: EdgeInsetsDirectional.all(12)),
                    Image.asset("assets/bigsquare.png",width: 250,height: 250,),                
                         const Padding(padding: EdgeInsetsDirectional.only(end: 20),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const BigSquare();
                              },
                            ),
                          );
                         const Padding(padding: EdgeInsetsDirectional.all(200),);
                        },
                        child: const Text("Bigsquare")),
                   const Padding(padding: EdgeInsets.only(left: 30)),
                    Image.asset("assets/italiano.png",
                    width: 250,
                    height: 250
                    ,)
                    ,                
                         const Padding(padding: EdgeInsets.only(left:20),),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Italiano();
                              },
                            ),
                          );
                         const Padding(padding: EdgeInsetsDirectional.all(200),);
                        },
                        child: const Text("Italiano")),
                     
                     
                  ],
                
                 
                ),
                RichText(text: const TextSpan(
                  text: "The map below shows the area frequented by requests and is always red hot busy."
                )),
                const Padding(padding: EdgeInsetsDirectional.only(bottom: 20)),
                Image.asset("assets/route.gif")
                
                
                
                         
                
                
                
                
              ]),
        ),
             
           ),
    
      
      
    );
  }
}

class CustomDelegateSearch extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.cancel),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = "";
            }
          },
        )
      ];

  @override
  Widget buildResults(BuildContext context) => Container(
        child: Text(query),
      );
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      "Pizza Inn",
      "Galitos",
      " Chicken Inn",
      "Pizza Hut",
      "Big Square",
    ];
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (contex, index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;

              showResults(context);
            },
          );
        });
  }
}
