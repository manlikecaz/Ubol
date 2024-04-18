import 'package:flutter/material.dart';
class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      buildButton(context ,'4.9', 'Rating'),
      buildDivider(),
       buildButton(context ,'5.9', 'Trips'),
       buildDivider(),
        buildButton(context ,'4.5', 'Tipping')
    ],

  );
  Widget buildDivider()=>VerticalDivider();
  Widget buildButton (BuildContext context, String value, String Text ) =>

  MaterialButton(onPressed: (){},
  child:  Column(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget> [Padding(padding: EdgeInsetsDirectional.only(bottom: 20)),
   RichText(text: TextSpan(
    text: value,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.black
    ),
   )),
   Padding(padding: EdgeInsetsDirectional.only(bottom: 20)),
    RichText(text: TextSpan(
    text: Text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.black
    ),
   )),
   
    
  ],
  ),
  );
  }

