import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ubol/cart.dart';
import 'package:ubol/components/my_button.dart';
import 'package:ubol/models/food.dart';
import 'package:ubol/models/shop.dart';

class FoodDetails extends StatefulWidget {
  final Food food ;
  const FoodDetails({super.key , required this.food});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  //quantity
  int quantityCount = 0;

  //decrement 
  void decrementQuantity (){
    setState(() {
      quantityCount--;
    });
  }
    //increment
    void incrementQuantity (){
    setState(() {
      quantityCount++;
    });
  
  }
     void addToCart (){
      if (quantityCount >0) {
       final shop = context.read<Shop>();

       shop.addToCart(widget.food, quantityCount);

       showDialog(context: context,
       builder:(context) =>AlertDialog(
        content: Text('Succesfully added to cart'),
        actions: [
          //pop ok button
          IconButton(onPressed: (){

            //pop once to remove dialog
              Navigator.pop(context);
            
            //pop again to previous screen
                Navigator.pop(context);
                
          }, icon: Icon(Icons.done))
        ],
       )
       ); 
      }
     }
 



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
                    return const CartPage();
                  }));
                },
                child: const Icon(Icons.shopping_cart),
              ),
            ])
          ],
      ),
      body: Column(
        children: [ const SizedBox(
          height:45,
        ),
          Expanded(child: ListView(
            children: [
              Image.asset(widget.food.imagePath,
              height: 200,
              ),
              const SizedBox(
                height: 25,
              ),
              //icon
              Row(
                children: [
                  Icon(Icons.star,
                  color: Colors.yellow[800],
                  ),
                     const SizedBox(
                height: 10,
              ),
              //rating
              Text(widget.food.rating as String,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],

              ),
              ),
             
              const SizedBox(height: 25,)
              ],
              ),
              const SizedBox(height: 25,),
              const Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 20)),
               //food name 
              Text(
                
                widget.food.name,
                style: GoogleFonts.dmSerifDisplay(fontSize:28),
          ),
          const SizedBox(

          height: 25,
          ),
          //descriptiom
          Text('Description.',
          style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          ),
          const SizedBox(

          height: 25,
          ),
          //text
          Container(
            margin: const EdgeInsetsDirectional.only(start: 30,
            end: 30),
            child: const Center( 
              child: Text(
                'Chips and ribs are a popular combination of two classic comfort foods. Chips, also known as fries, are thin strips of potatoes that have been deep-fried until they are crispy on the outside and soft on the inside. They are often seasoned with salt and served with ketchup, mayonnaise, or other dipping sauces , Ribs, on the other hand, are a type of meat dish that typically features pork or beef ribs that have been slow-cooked until they are tender and juicy. They are often seasoned with a variety of spices and sauces, such as barbecue sauce or a dry rub, and can be grilled, smoked, or baked. When served together, chips and ribs make for a delicious and satisfying meal. The crispy, salty chips complement the rich, savory flavor of the ribs, and the combination of textures is sure to please any palate. Whether enjoyed as a casual snack or a hearty meal, chips and ribs are a classic combination that is sure to hit the spot.'
              ,
              style: TextStyle(
                fontWeight: FontWeight.normal
              ),),
            ),
          ),
          const SizedBox(height: 250,),

          //price+ quantity+ addtocart
          Container(
            
            color: Colors.redAccent,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //price
                Text('\$' + widget.food.price,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                 ),
                 const Padding(padding: EdgeInsets.symmetric(horizontal: 90)),
                //quantity
                Row(
                  children: [ const Padding(padding: EdgeInsets.symmetric(horizontal: 80)),
                    //minus button
                    GestureDetector(
                      child: Container(
                        decoration: const BoxDecoration(
                          color : Colors.black,
                          shape: BoxShape.circle
                          ),
                        child: IconButton(onPressed: decrementQuantity, 
                        icon: const Icon(Icons.remove),
                        color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 90)),

                       Text(quantityCount.toString(),
    style:TextStyle(
      color: Colors.grey[800],
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ) ,
    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 90)),
                     GestureDetector(
                      child: Container(
                        decoration: const BoxDecoration(
                          color : Colors.black,
                          shape: BoxShape.circle
                          ),
                        child: IconButton(onPressed: incrementQuantity, 
                        icon: const Icon(Icons.add),
                        color: Colors.white,
                        ),
                      ),
                    ),
                    
                  ],
                ),
                const SizedBox(height: 40,),
                 ElevatedButton(onPressed: addToCart, child: const Text('Add to cart'))
              ],
            ),
          )
          ],
          ))
        ],
      ),
    );
  }
}