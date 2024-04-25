import 'package:flutter/material.dart';
import 'package:ubol/models/food.dart';

class Shop extends ChangeNotifier{
   final List <Food> _FoodMenu = [
    //Chips and ribs
    Food(name: 'Chips and ribs',
     price: '890 ksh', 
     imagePath: 'assets/chipsandribs.png',
      rating: '4.9'),
    //Loaded fires
    Food(name: 'Loaded fries',
     price: '900 ksh', 
     imagePath: 'assets/wingsspec.png',
      rating: '4.8'),
      //Loaded fries and burger
    Food(name: 'Loaded fries and burger',
     price: '790 ksh', 
     imagePath: 'assets/burger.png',
      rating: '4.9'),
      //Loaded fries and mojo
    Food(name: 'Two piecer',
     price: '1890 ksh', 
     imagePath: 'assets/twopiecer.png',
      rating: '5.9'),

      Food(name: 'Family pack',
     price: '1090 ksh', 
     imagePath: 'assets/familypack.png',
      rating: '4.3'),
    //Loaded fires
    Food(name: 'Italiano olive Pizza',
     price: '1000 ksh', 
     imagePath: 'assets/italianoolive.png',
      rating: '4.6'),
      //Loaded fries and burger
    Food(name: 'Margherita Pizza',
     price: '1790 ksh', 
     imagePath: 'assets/margherita.png',
      rating: '4.2'),
      //Loaded fries and mojo
    Food(name: 'Italiano original pizza',
     price: '2890 ksh', 
     imagePath: 'assets/italianozing.png',
      rating: '5.0'),
      
  ];
//customer cart
  final List <Food> _cart = [];
//get items
   List <Food>  get FoodMenu => _FoodMenu;
   List <Food> get cart => _cart;

   void addToCart(Food foodItem , quantity){
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
   }
   void removeFromCart(Food food){
    _cart.remove(food);
    notifyListeners();
   }
   
}