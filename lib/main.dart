import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ubol/login.dart';
import 'package:ubol/models/shop.dart';
import 'package:ubol/splashscreen.dart';

void main() async {

WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform);
//  await UserPreferences.init();
  runApp(
     ChangeNotifierProvider(
      create: (context) => Shop(),
    child: const Ubol()  
    ),
  );}
 final usernameController = TextEditingController();

  final passwordController = TextEditingController();
 

class Ubol extends StatelessWidget {
  const Ubol({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
      
    );
  }
}

