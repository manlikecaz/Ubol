import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:ubol/models/food.dart';
import 'package:ubol/models/shop.dart';

class CartPage extends StatefulWidget {
  
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
  
}
  void removeFromCart(Food food, BuildContext context){
  final shop = context.read<Shop>();
  //remove item
  shop.removeFromCart(food);
}

class _CartPageState extends State<CartPage> {
  double _totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) {
        value.cart.forEach((food) {
          final double price = double.parse(food.price.replaceAll("ksh", ""));
          _totalPrice += price;
        });
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 111, 111, 126),
            title: const Text("Ubol"),
            titleTextStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 29,
            ),
            actions: [Image.asset("assets/profile.png")],
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final Food food = value.cart[index];
                    return Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(151, 235, 5, 5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        title: RichText(
                            text: TextSpan(
                                text: food.name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ))),
                        subtitle: RichText(
                            text: TextSpan(
                                text: food.price,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ))),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              final double price = double.parse(food.price.replaceAll("ksh", ""));
                              _totalPrice -= price;
                              removeFromCart(food, context);
                            });
                          },
                          icon: Icon(Icons.remove_circle),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(79),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 180)),
                    RichText(
                        text: TextSpan(
                            text: 'Pay Now',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ))),
                    Icon(Icons.arrow_circle_right)
                  ],
                ),
              ),
              Text(
                "Total Price: \$$_totalPrice",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}