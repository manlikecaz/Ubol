import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ubol/cart.dart';
import 'package:ubol/components/food_tile.dart';
import 'package:ubol/components/my_button.dart';
import 'package:ubol/food_details.dart';
import 'package:provider/provider.dart';

import 'package:ubol/models/food.dart';
import 'package:ubol/models/shop.dart';
class Eats extends StatefulWidget {
  const Eats({super.key});

  @override
  State<Eats> createState() => _EatsState();
}

class _EatsState extends State<Eats> {
 

  void navigateToFoodDetails(int index) {
     //to get the shop and its menu
  final shop = context.read<Shop>();
  final foodMenu = shop.FoodMenu;
    Navigator.push( context as BuildContext,  MaterialPageRoute(builder: ( context) =>
       FoodDetails(food: foodMenu[index],),
    ));
  }
 

  @override
  Widget build(BuildContext context) {
        //to get the shop and its menu
  final shop = context.read<Shop>();
  final foodMenu = shop.FoodMenu;
    return Scaffold(
      
      appBar:  AppBar(
        backgroundColor: Color.fromARGB(255,138,60,55),
          title: const Text("Ubol"),
          actions: [
            Row(children: [
              Image.asset("assets/letter-u.png"),
              const Padding(padding: EdgeInsetsDirectional.only(start: 290)),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const CartPage();
                  }));
                },
                child: const Icon(Icons.shopping_cart),
              ),
            ])
          ],
      ),
    
      body: 
      
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [ 
          
           Container(
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 112),
            padding: const EdgeInsets.all(25),
             decoration:  BoxDecoration(
            color: Color.fromARGB(255, 14, 1, 1),
            borderRadius: BorderRadius.circular(20)
            
           ),
            child: Image.asset('assets/Eats.gif')),
          
          SizedBox(
            height: 20,
          ),
           Container(
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 1),
            padding: const EdgeInsets.all(25),
             decoration:  BoxDecoration(
            color: Color.fromARGB(255,138,60,55),
            borderRadius: BorderRadius.circular(20)
            
           ),
                 
             child: Row(
               children: [
                 Column(
                  
                  children: [
                   
                    const Row(
                      children: [
                        Text('Get 50% once 50 purchaces',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                      ],
                    ),
                    const  SizedBox(height: 20,),
                   ElevatedButton(
                    
                    onPressed: (){}, child: RichText(text: TextSpan(
                    text: 'REDEEM',
                    style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.grey[300]
                    )
                   ))),
                   
                  ],
                  
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                 Image.asset('assets/burger.png'),
                 
               ],
               
             ),
             
           ),
           
           const Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25)),
           RichText(text: const TextSpan(
            text: 'Food menu.',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
           )),
           Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
            itemCount : foodMenu.length,
            itemBuilder: (context, index) => FoodTile(
              food: foodMenu[index],
              onTap: ()=>navigateToFoodDetails(index)
            ))),
         ],
       ),
       
    
    ); 
  }
}