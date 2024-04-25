// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:ubol/home.dart';
// import 'package:ubol/login.dart';

// class AuthPage extends StatelessWidget {
//   const AuthPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:StreamBuilder<User?>(
//        stream: FirebaseAuth.instance.authStateChanges(),
//        builder:(context , snapshot){
//         //User loged in
//         if( snapshot.hasData){
//           return Home();
//         }
//         else{
//           return LoginPage();
//         }
//         //user not logeed in
//        }
      
//       )
//     );
//   }
// }