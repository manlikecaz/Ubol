import 'package:flutter/material.dart';
import 'package:ubol/cart.dart';

dynamic appBar (BuildContext context){
  AppBar(
         backgroundColor: const Color.fromARGB(255, 137, 97, 110),
        title: const Text("Ubol"),
        actions: [  Center( child: 
          Image.asset("assets/letter-u.png")
        ),const Padding(padding: EdgeInsetsDirectional.only(start: 300)),
         ElevatedButton(onPressed: (){
         Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const cart();
          }));
         }, child:  const Icon(Icons.shopping_cart,size: 40,)),
         const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
         
         
         
]);
}