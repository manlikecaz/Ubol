import 'package:flutter/material.dart';
import 'package:ubol/eats.dart';
import 'package:ubol/intro_eatspage.dart';
import 'package:ubol/logout.dart';
import 'package:ubol/profile.dart';
import 'package:ubol/settings.dart';
import 'package:ubol/trips.dart';


class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration:
                    BoxDecoration(color: (Color.fromARGB(198, 234, 173, 167))),
                child: Text('Drawer Header'),
              ),
              ListTile(
                  tileColor: Colors.black,
                  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
                  leading: const Icon(Icons.tire_repair_sharp),
                  iconColor: const Color.fromARGB(198, 234, 173, 167),
                  title: const Text("Trips"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Trips();
                    }));
                  }),
              const Padding(padding: EdgeInsetsDirectional.only(bottom: 20.0)),
              ListTile(
                  tileColor: Colors.black,
                  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
                  leading: const Icon(Icons.person_pin_rounded),
                  iconColor: const Color.fromARGB(198, 234, 173, 167),
                  title: const Text("Profile"),
                  textColor: const Color.fromARGB(198, 234, 173, 167),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const ProfilePage();
                    }));
                  }),
              const Padding(padding: EdgeInsetsDirectional.only(bottom: 20.0)),
              ListTile(
                tileColor: Colors.black,
                titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
                leading: const Icon(Icons.settings),
                iconColor: const Color.fromARGB(198, 234, 173, 167),
                title: const Text("Settings"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const settings();
                  }));
                },
              ),
              const Padding(padding: EdgeInsetsDirectional.only(bottom: 20.0)),
              ListTile(
                tileColor: Colors.black,
                titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
                leading: const Icon(Icons.food_bank),
                iconColor: const Color.fromARGB(198, 234, 173, 167),
                title: const Text("UBOL EATS"),
                textColor: const Color.fromARGB(198, 234, 173, 167),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const IntroScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 20,),
               ListTile(
                  tileColor: Colors.black,
                  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
                  leading: const Icon(Icons.tire_repair_sharp),
                  iconColor: const Color.fromARGB(198, 234, 173, 167),
                  title: const Text("Log out"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return  LogoutPage();
                    }));
                  }),
            ],
          ),
        ),
          backgroundColor: Colors.grey[300],
        appBar: AppBar(
          actions: [Image.asset("assets/letter-u.png")],
          backgroundColor: const Color.fromARGB(255, 137, 97, 110),
          title: const Text("Ubol"),
        ),
  
        body: SingleChildScrollView(
            child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(
              bottom: 50.0,
            ),
          ),
          Row(children: [
            const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
            ElevatedButton(
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return const Trips();
            }
            )
            );
            },
                child: Row(children: [
                  Image.asset(
                    'assets/drive.png',
                    width: 50,
                    height: 50,
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "Ubol drive",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))),
                ])),
                Padding(padding: EdgeInsetsDirectional.only(start: 200)),
                  ElevatedButton(
            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return const IntroScreen();
            }
            )
            );
            },
            child: Row(
              children: [
                Image.asset(
                  "assets/P.png",
                  width: 50,
                  height: 50,
                ),
                RichText(
                    text: const TextSpan(
                        text: "Ubol Eats",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
              ],
            ),
          ),
          ]),
          const Padding(padding: EdgeInsetsDirectional.only(start: 300)),
         
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 50.0)),
              Image.asset(
                "assets/map.gif",
                width: 100,
                height: 100,
              ),
              const Text("   We have local maps."),
              const Padding(padding: EdgeInsetsDirectional.only(bottom: 150.2)),
              const Padding(padding: EdgeInsets.only(left: 200.0)),
              Image.asset(
                "assets/quick-response.gif",
                width: 100,
                height: 100,
              ),
              const Text("   We HyperQuick Responses"),
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 50.0)),
              Image.asset(
                "assets/customer-support.gif",
                width: 100,
                height: 100,
              ),
              const Text("   24 hr customer care service."),
              const Padding(padding: EdgeInsetsDirectional.only(bottom: 150.2)),
              const Padding(padding: EdgeInsets.only(left: 150.0)),
              Image.asset(
                "assets/jeep.gif",
                width: 100,
                height: 100,
              ),
              const Text("   HyperQuick, safe rides"),
            ],
          ),
          const Padding(padding: EdgeInsetsDirectional.only(bottom: 20.2)),
          RichText(
            text: const TextSpan(
              text: "The following are new features in Ubol,",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const Padding(padding: EdgeInsetsDirectional.only(bottom: 1.2)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 30.0)),
              Image.asset(
                "assets/car-sharing.png",
                width: 100,
                height: 100,
              ),
              const Text(
                  "   You can now share rides in Ubol and save upto 40% of the original price"),
              const Padding(padding: EdgeInsetsDirectional.only(bottom: 150.2)),
              const Padding(padding: EdgeInsets.only(left: 150.0)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          RichText(
            text: const TextSpan(
              text:
                  "This are the cars that are available in Ubol at the moment.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0, right: 2000),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
              Image.asset(
                "assets/van.png",
                width: 200,
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19),
              ),
              RichText(
                text: const TextSpan(
                    text: " UBOL VAN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 160),
              ),
              Image.asset(
                "assets/zoot.png",
                width: 200,
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19),
              ),
              RichText(
                text: const TextSpan(
                    text: " UBOL Zoot",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 1.0, right: 90),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
              Image.asset(
                "assets/swift.png",
                width: 200,
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19),
              ),
              RichText(
                text: const TextSpan(
                    text: " UBOL Swift",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 160),
              ),
              Image.asset(
                "assets/share.png",
                width: 200,
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19),
              ),
              RichText(
                text: const TextSpan(
                    text: " UBOL Share",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 1.0, right: 90),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsetsDirectional.only(start: 30)),
              Image.asset(
                "assets/x.png",
                width: 200,
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 19),
              ),
              RichText(
                text: const TextSpan(
                    text: " UBOL X",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 190),
              ),
              Image.asset(
                "assets/blackvan.png",
                width: 200,
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 9),
              ),
              RichText(
                text: const TextSpan(
                    text: "Ubol Black Van",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
              ),
            ],
          ),
          Row(
            children: [Image.asset('assets/trip_banner.png', width: 800,),
            ])
        ]
        )
        )
        );
  }
}
