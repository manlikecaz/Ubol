
import 'package:flutter/material.dart';
import 'package:ubol/register.dart';
import'package:ubol/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(198, 234, 173, 167),
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
           ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Home();
                    },
                  ),
                );
              },
             child: const Text("Login"),
            ),
            const Padding(padding: EdgeInsets.all(20)),
         const Text("If you do not have an account please sign up below!"),
         const Padding(padding: EdgeInsets.all(20)),
         ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Registerpage();
                    },
                  ),
                );
              },
              
             child: const Text("Sign Up"),
            ),
        ],
      ),
    );
  }
}
