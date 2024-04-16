
import 'package:flutter/material.dart';
import 'package:ubol/home.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(


    );
  }
}

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  


  

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  backgroundColor:const Color.fromARGB(198, 234, 173, 167),
      appBar:  AppBar(
        backgroundColor: const Color.fromARGB(255, 137, 97, 110),
        title: const Text("Ubol"),
        actions: [Image.asset("assets/profile.png")],
      ),
      body: Column(
        children: [const Padding(padding: EdgeInsets.all(20)),
          RichText(
            text: const TextSpan( 
                text: "Welcome to Ubol.",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                children: []),
          ),
          const Padding(padding: EdgeInsets.all(40)),
          Image.asset(
            "assets/login.gif",
            width: 1000,
            height: 100,
          ),
         const Padding(padding: EdgeInsets.all(40)),
          TextFormField(
            obscureText: false,
            decoration: const InputDecoration(labelText: "Email"),
           
            
          ),
         const Padding(padding: EdgeInsets.all(20)),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: "Password"),
            
          ),
          const Padding(padding: EdgeInsets.all(20)),
           Center(child: 
           ElevatedButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return const Home();
              }
              )
              );
              
               
               


                    }, 
                    child: const Text("Login"),
                  )),
                ]));
              }
              
               
            
           
        
  }
  
  
  
 
