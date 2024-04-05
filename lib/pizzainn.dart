import 'package:flutter/material.dart';

import 'globals.dart' as globals;

class PizzaInn extends StatefulWidget {
  const PizzaInn({super.key});

  @override
  State<PizzaInn> createState() => _PizzaInnState();
}

class _PizzaInnState extends State<PizzaInn> {
  List items = [
    {'image':'./assets/margherita.png','name':'Margherita pizza','holder':'pizzainn'},
    { 'image':'./assets/napoleon.png','name':'Napolepn pizza','holder':'pizzainn'},
     { 'image':'./assets/loaded.png','name':'Loaded pizza','holder':'pizzainn'},
      { 'image':'./assets/gazib.png','name':'Gazib pizza','holder':'pizzainn'}
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
        appBar: AppBar(
          leading: globals.appBar(context),
        ),

       
      body: SingleChildScrollView(
        child: Container( 
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: 
            [Colors.black,Colors.grey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
        ),

            
            child:  Column( 
              children: [
                Row( children: [ 
                  
                 const Padding(padding: EdgeInsetsDirectional.all(5)),
                 const Padding(padding: EdgeInsetsDirectional.only(top: 40)),
                      Image.asset("assets/margherita.png"),
                      const Padding(padding: EdgeInsets.all(30)),
                      RichText(text: const TextSpan(
                        text: " Margherita pizza.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),),
                      const Padding(padding: EdgeInsetsDirectional.all(20),),
                      ElevatedButton.icon(onPressed: (){
                        
                      }, icon:const  Icon(Icons.add), label: const Text("Add to cart") ),
                
                
                          ]),
                   
                   const Padding(padding: EdgeInsetsDirectional.only(top: 10)),

                Row( children: [
                      Image.asset("assets/napoleon.png"),
                      const Padding(padding: EdgeInsets.all(30)),
                      RichText(text: const TextSpan(
                        text: " Napoleon pizza.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),),
                      const Padding(padding: EdgeInsetsDirectional.all(20),),
                      ElevatedButton.icon(onPressed: (){}, icon:const  Icon(Icons.add), label: const Text("Add to cart") ),
  
                          ]),
                          const Padding(padding: EdgeInsetsDirectional.all(20),),
                           Row( children: [
                      Image.asset("assets/loaded.png"),
                      const Padding(padding: EdgeInsets.all(30)),
                      RichText(text: const TextSpan(
                        text: " Loaded pizza.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),),
                      const Padding(padding: EdgeInsetsDirectional.all(20),),
                      ElevatedButton.icon(onPressed: (){}, icon:const  Icon(Icons.add), label: const Text("Add to cart") ),
                
                
                          ]),
                        const Padding(padding: EdgeInsetsDirectional.all(20),),
                           Row( children: [
                      Image.asset("assets/gazib.png"),
                      const Padding(padding: EdgeInsets.all(30)),
                      RichText(text: const TextSpan(
                        text: " Gazib pizza.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),),
                      const Padding(padding: EdgeInsetsDirectional.all(20),),
                      ElevatedButton.icon(onPressed: (){}, icon:const  Icon(Icons.add), label: const Text("Add to cart") ),
                
                
                          ]),
              ],
              
            ),
        
          
          
    
      ),
      
    ));
  }
}