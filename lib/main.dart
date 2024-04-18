import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ubol/firebase_options.dart';
import 'package:ubol/splashscreen.dart';
import 'package:ubol/user_preferences.dart';
void main() async {

WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
 await UserPreferences.init();

  runApp(const Ubol());
}
class Ubol extends StatelessWidget {
  const Ubol({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
class RootPage extends StatefulWidget {
  const RootPage({super.key});
@override
  State<RootPage> createState() => _RootPageState();
}
class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
