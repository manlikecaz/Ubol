import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

const ButtonWidget({
  Key? key,
  required this.text,
  required this.onClicked,
}):super(key: key);
 

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(), 
    ),
    onPressed: onClicked, 
    child: Text(text));
  }