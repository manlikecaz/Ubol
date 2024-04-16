import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ubol/user_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
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
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container( width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors:[ Colors.black, Colors.blueGrey, Colors.redAccent,Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight           
              ),
            ),
            padding: const EdgeInsetsDirectional.only(top: 28),
            child: Column(
              children: [
                RichText(text: const TextSpan(
                  text: "This is your user profile .",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                )),
                 const Padding(padding:   EdgeInsetsDirectional.only(top: 28),),
                Row( 
                  children: [const Padding(padding: EdgeInsetsDirectional.only(start: 30),),
                const  CircleAvatar( 
                	radius: 48, // Image radius 
                	backgroundImage: AssetImage('assets/meteor-rain.gif'), 
                ),
                const Padding(padding: EdgeInsetsDirectional.only(start: 20)),
                  RichText(text: const TextSpan(
                    text: "Star rating 6.0",
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  )),
                  const Padding(padding: EdgeInsetsDirectional.only(start:50),),
                   const  CircleAvatar( 
                	radius: 120, // Image radius 
                	backgroundImage: AssetImage('assets/social-page.gif'), 
                ),
                  
                  ],
                ),
                const Padding(padding: EdgeInsetsDirectional.only(bottom: 28)),
                Container(
                  color: Colors.black12,
                  child: RichText(text: const TextSpan(
                    text: "OFFER HUB.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    ),
                ),
                const Padding(padding: EdgeInsetsDirectional.only(bottom: 28)),
                Container(
                  color: Colors.black12,
                  width: 800,
                  height: 250,padding: const EdgeInsetsDirectional.only(start: 50),
                  child: RichText(text: const TextSpan(
                    text: "The offers you acquire will be shown below together with the expiry date.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    )
                )
            )
            ),
              Container(
                  color: Colors.black12,
                  width: 800,
                  height: 250,padding: const EdgeInsetsDirectional.only(start: 50),
                  child: 
                    TextFormField(
                obscureText: false,
                decoration: const InputDecoration(hintText: "Email"),
              ), 
              )
            ],
            ) ,
          ),
        ],
      ),
    );
  }
}