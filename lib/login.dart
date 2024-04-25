import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart'as http;
import 'package:ubol/components/my_button.dart';
import 'package:ubol/components/my_textfield.dart';
import 'package:ubol/components/square_tile.dart';
import 'package:ubol/home.dart';
import 'package:ubol/register.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});
  
  // get storage => null;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  
    void signUserIn() async {
  showDialog(
    context: context,
    builder: (context) => const Center(
      child: CircularProgressIndicator(),
    ),
  );

  final String email = emailController.text;
  final String password = passwordController.text;

  final response = await loginUser(email, password);

  // Hide the progress indicator
  Navigator.of(context).pop();

  if (response.statusCode == 201) {
    // Registration successful
    // final responseData = jsonDecode(response.body);
    // final token = responseData['token'];

    // Store the token securely
    // await widget.storage.write(key: 'token', value: token);
    //print('Token stored securely');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Login Successful'),
        content: const Text('You have successfully logged in.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  } else {
    // Registration failed
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Login Failed'),
        content: Text('Error: ${response.body}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

  Future<http.Response> loginUser(
       String email, String password, ) async {
    const String apiUrl =
        'http://127.0.0.1:8000/api/login'; // Replace with your Laravel API endpoint

    final Map<String, String> data = {
      'email': email,
      'password': password,
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(data),
      headers: {'Content-Type': 'application/json'},
    );

    return response;
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //  Name of app
                Container(
                  child:  Center(child: Image.asset('assets/login_banner.gif') ,),
                ),
                   const SizedBox(height: 50),
                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
        
                const SizedBox(height: 50),
        
                // welcome back, you've been missed!
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
        
                const SizedBox(height: 25),
        
                // username textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false, 
                  labeltext: 'email', 
                  prefixIcon: Icon(Icons.usb_off_rounded), 
                  suffixIcon: null,
                ),
        
                const SizedBox(height: 10),
        
                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true, labeltext: 'password', prefixIcon: Icon(Icons.lock), suffixIcon: null,
                ),
        
                const SizedBox(height: 10),
        
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 25),
        
                // sign in button
                MyButton(
                  onTap: signUserIn, 
                  text: 'Sign in',
                ),
        
                const SizedBox(height: 50),
        
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 50),
        
                // google + apple sign in buttons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(imagePath: 'assets/google.png'),
        
                    SizedBox(width: 25),
        
                    // apple button
                    SquareTile(imagePath: 'assets/apple.png')
                  ],
                ),
        
                const SizedBox(height: 50),
        
                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    ElevatedButton( 
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                          return const SignUp(
                          );
                        }));
                      },
                      child :
                     const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                 )],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}