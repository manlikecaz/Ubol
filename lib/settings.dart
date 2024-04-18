import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ubol/button_widget.dart';
import 'package:ubol/edit_settings.dart';
import 'package:ubol/numbers_widget.dart';
import 'package:ubol/settings_widget.dart';
import 'package:ubol/user.dart';
import 'package:ubol/user_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return  Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 121, 121, 169),
        title: const Text("Ubol"),
        titleTextStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 29,
        ),
        actions: [Image.asset("assets/profile.png")],
      ),
      body: Stack(
        children: [ Container(width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black, Colors.blueGrey, Colors.redAccent,Colors.deepPurpleAccent],
          begin:Alignment.topLeft ,
          end: Alignment.bottomRight,
          )
        ),
        ),
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [   const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
            SettingsWidget(
                  imagepath: user.imagepath,
                
                  onClicked: () async {
                   await Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return const EditSettingsPage();
                    }));
                    setState(() {});
                  },
                ),
          
                buildName(user),
                  const Padding(padding: EdgeInsetsDirectional.only(bottom: 24)),
                Center(child: buildUpgradeButton()),
                NumbersWidget(),
                buildOffers(user), 
                 buildAbout(user), 
          
            ]),
            SizedBox(
        height: 90,
      ),
         
      ])
      )
      ;
  }
  Widget buildName(User user)=> Column(
    
    children: [
     
     Text(
      user.name,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
     ),
     const Padding(padding: EdgeInsetsDirectional.only(bottom: 20)),
     Text(
      user.email,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
     )
  ]
   );
  Widget buildUpgradeButton()=> ButtonWidget(
    text:
      'Upgrade to Pro',
      onClicked:(){}
    
 );
 Widget buildOffers(User user)=> Container(
  padding: const EdgeInsets.symmetric(horizontal: 48),
   child: const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [ Padding(padding: EdgeInsetsDirectional.only(start: 78,bottom: 38)),
      Text(
        'Offers. ',
        style:  TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black
   )),
   
   
   ]),
 );
  Widget buildAbout(User user)=> Container(
  padding: const EdgeInsets.symmetric(horizontal: 48),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [ const Padding(padding: EdgeInsetsDirectional.only(start: 78,bottom: 38)),
      const  Text(
        'Offers. ',
        style:  TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black
   )),
    Text(
        user.about,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white
   ))],
   
   ),
 );

}
  

  