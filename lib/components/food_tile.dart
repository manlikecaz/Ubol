import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ubol/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({
    super.key, 
     required this.food, 
     required this.onTap});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 10,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.only(left:25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset(
                  food.imagePath,
                  height: 140,
                ),
              ),
              // text and price/rating
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // text
                  Text(
                    food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                  ),
                  // price + rating row
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ' + food.price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              food.rating.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}