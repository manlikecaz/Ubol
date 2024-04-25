import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubol/components/my_button.dart';
import 'package:ubol/components/my_textfield.dart';
import 'package:ubol/login.dart';

class SignUp extends StatefulWidget {
 
  const SignUp({super.key,});
  
  get onTap => null;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmPWcontroller = TextEditingController();

  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void signup() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    final String username = usernamecontroller.text;
    final String email = emailcontroller.text;
    final String password = passwordcontroller.text;
    final String passwordConfirmation = confirmPWcontroller.text;


    final response = await registerUser(username, email, password,passwordConfirmation );

    // Hide the progress indicator
    Navigator.of(context).pop();

    if (response.statusCode == 201) {
      // Registration successful
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Registration Successful'),
          content: const Text('You have successfully registered.'),
          actions: [
            TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) =>  LoginPage(onTap: (){},)),//the import of your screen
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
          title: const Text('Registration Failed'),
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

  Future<http.Response> registerUser(
      String username, String email, String password, String passwordConfirmation ) async {
    const String apiUrl =
        'http://127.0.0.1:8000/api/register'; // Replace with your Laravel API endpoint

    final Map<String, String> data = {
      'name': username,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation
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
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView( 
          scrollDirection: Axis.vertical,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Padding(
              padding: const EdgeInsets.all(50.0),
               
            
          
            child: Center(       
              child: Column(
                children: [ 
                   const Text("Sign Up ",  
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    fontSize: 35, 
                    fontWeight: FontWeight.w600, 
                    color: Colors.black,),),
          
                  const SizedBox(height: 20,),
          
                  MyTextField(
                    hintText: 'Username', 
                    labeltext: 'Username', 
                    obscureText: false, 
                    controller: usernamecontroller, 
                    prefixIcon: const Icon(Icons.person_2_outlined),
                    suffixIcon: null),
          
                    const SizedBox(height: 20,),
          
                    MyTextField(
                      hintText: 'Email', 
                      labeltext: "Email", 
                      obscureText: false, 
                      controller: emailcontroller, 
                      prefixIcon: const Icon(Icons.email_outlined),
                      suffixIcon: null),
          
                     const SizedBox(height: 20,),   
          
                     MyTextField(
                      hintText: 'Password', 
                      labeltext: "Password", 
                      obscureText: _isHidden, 
                      controller: passwordcontroller, 
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: InkWell( 
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                              ? Icons.visibility
                              : Icons.visibility_off)
                          ),) ,     
              
                const SizedBox(height: 20),
          
                MyTextField(
                  hintText: 'Confirm Password', 
                  labeltext: 'Confirm Password', 
                  obscureText: _isHidden, 
                  controller: confirmPWcontroller, 
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: InkWell( 
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                              ? Icons.visibility
                              : Icons.visibility_off)
                          ),),
          
                  const SizedBox(height: 20,),
              
              MyButton(text: 'Proceed', onTap: signup),

              const SizedBox(height: 20,),
          
             
             Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               const Text('Already have an account?', style: TextStyle(color: Colors.black,),),
                              const SizedBox(width: 10,),
                              ElevatedButton( 
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                    return LoginPage(onTap: widget.onTap);
                                  }));
                                },
          
                                child: const Text('Login', 
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),))
                            ],
                          ),
              
              
              
                ],),
            
            ),
            ),
            ],),
        ),
      ),
      
    );
  }
}
