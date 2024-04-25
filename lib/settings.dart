import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ubol/eats.dart';
import 'package:ubol/help.dart';
import 'package:ubol/logout.dart';
import 'package:ubol/profile.dart';
import 'package:ubol/trips.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 111, 111, 126),
          title: const Text("Ubol"),
          titleTextStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 29,
          ),
          actions: [Image.asset("assets/profile.png")],
        ),
        
        body: SingleChildScrollView(
            child:  Column(
              children: [ Image.asset('assets/settings.png'),
                Center(
                  child: 
                  Row(children: [SizedBox(height: 400,),
                              const Padding(
                      padding: EdgeInsetsDirectional.only(
                    start: 60,
                              )),
                             
                              
                      Padding(padding: EdgeInsetsDirectional.only(bottom: 90)),
                      Container(
                        width: 150,
                        height: 150,
                        //BoxDecoration Widget
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/HELP-2.gif'),
                            fit: BoxFit.cover,
                          ), //DecorationImage
                          border: Border.all(
                            color: Colors.green,
                            width: 8,
                          ), //Border.all
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                5.0,
                                5.0,
                              ), //Offset
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                            //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ), //BoxDecoration
                      ), Padding(padding: EdgeInsetsDirectional.only(start: 20)),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context) {
                              return Help();
                            }));
                          },
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Help',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    backgroundColor: Colors.black,
                                    color: Colors.amber,
                                  )))),
                    
                              
                              
                              Padding(padding: EdgeInsetsDirectional.only(start: 20)),
                            
                      
                      Container(
                        width: 150,
                        height: 150,
                        //BoxDecoration Widget
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/HELP-3.gif'),
                            fit: BoxFit.cover,
                          ), //DecorationImage
                          border: Border.all(
                            color: Colors.green,
                            width: 8,
                          ), //Border.all
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(
                                5.0,
                                5.0,
                              ), //Offset
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        //Container
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context) {
                              return Help();
                            }));
                          },
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Wallet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    backgroundColor: Colors.black,
                                    color: Colors.amber,
                                  )))),
                    
                              
                              Padding(padding: EdgeInsetsDirectional.only(start: 10)),
                            
                      Padding(padding: EdgeInsetsDirectional.only(bottom: 90)),
                      Container(
                          width: 150,
                          height: 150,
                          //BoxDecoration Widget
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/HELP-4.gif'),
                                fit: BoxFit.cover,
                              ), //DecorationImage
                              border: Border.all(
                                color: Colors.green,
                                width: 8,
                              ), //Border.all
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(
                                    5.0,
                                    5.0,
                                  ), //Offset
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //Center
                              ])),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context) {
                              return ProfilePage();
                            }));
                          },
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Profile',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    backgroundColor: Colors.black,
                                    color: Colors.amber,
                                  )))),
                                  
                    ],     
                    ),
                ),
                  TextButton(onPressed: (){
                     Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                            return Trips();
                          }));
                  } , child: Row(
                    children: [
                       const Icon(Icons.car_rental_rounded),
                    Padding(padding: EdgeInsetsDirectional.only(
                      start: 30
                    )),
                      RichText(text: const TextSpan(
                        text: ' Ubol Drive Promotions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black

                        )
                      ))
                    
                  
            ]
            )
            ),
            Padding(padding: EdgeInsetsDirectional.only(
                      bottom: 30
                    )),
            TextButton(onPressed: (){
                     Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                            return Eats();
                          }));
                  } , child: Row(
                    children: [
                       const Icon(Icons.delivery_dining),
                    Padding(padding: EdgeInsetsDirectional.only(
                      start: 30
                    )),
                      RichText(text: const TextSpan(
                        text: ' Ubol Eats Promotions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black

                        )
                      ))
                    
                  
            ])),
            Padding(padding: EdgeInsetsDirectional.only(
                      bottom: 30
                    )),
            TextButton(onPressed: (){
                     Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                            return ProfilePage();
                          }));
                  } , child: Row(
                    children: [
                       const Icon(Icons.person_2_sharp),
                    Padding(padding: EdgeInsetsDirectional.only(
                      start: 30
                    )),
                      RichText(text: const TextSpan(
                        text: ' Profile Page',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black

                        )
                      ))
                    
                  
            ])),
                      Padding(padding: EdgeInsetsDirectional.only(
                      bottom: 30
                    )),
            TextButton(onPressed: (){
                     Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                            return LogoutPage();
                          }));
                  } , child: Row(
                    children: [
                       const Icon(Icons.logout),
                    Padding(padding: EdgeInsetsDirectional.only(
                      start: 30
                    )),
                      RichText(text: const TextSpan(
                        text: ' Log out',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black

                        )
                      ))
                    
                  
            ])),
            
             Padding(padding: EdgeInsetsDirectional.only(
                      bottom: 90)),
            Image.asset('assets/global_banner.png')
          
            ],
            
            ),
        )
        );
  }
}
