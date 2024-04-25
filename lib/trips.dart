import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:latlong2/latlong.dart';

class Trips extends StatefulWidget {
  const Trips({super.key});

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 111, 111, 126),
          title: const Text("Ubol"),
          titleTextStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 29,
          ),
          actions: [Image.asset("assets/profile.png")],
        ),
        body: 
        content(
          // UserLocationMaker(personMarker: MarkerIcon(
          //   icon: Icon(Icons.person_pin_circle_sharp),
          // ), directionArrowMarker: MarkerIcon(
          //   icon: Icon(Icons.arrow_forward_ios),
          // ))
        )
        
    );
  }
  Widget content (){
          return  
              Stack(
                children:[
                  
                   FlutterMap(options: 
                            const MapOptions(
                initialCenter: LatLng(1.2156, 36.8150) ,
                initialZoom: 11,
                interactionOptions: InteractionOptions(
                  flags: ~InteractiveFlag.doubleTapZoom,
                  
                ),
                
                            ),
                             children: [
                openStreetMapTilelayer,
                Positioned(
          top: 20,
          left: 20,
          child: SizedBox(
            width: 200,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Where are you headed',
              ),
            ),
          ),
                )
                             ]
                            
                          ),
              ]);
        }
}

TileLayer get openStreetMapTilelayer =>TileLayer(
  urlTemplate:'https://tile.openstreetmap.org/{z}/{x}/{y}.png' ,
  userAgentPackageName: 'dev.fleafet.flutter_map.example',
);