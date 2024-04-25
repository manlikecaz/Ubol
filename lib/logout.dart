import 'package:flutter/material.dart';
import 'package:ubol/home.dart';
import 'package:ubol/login.dart'; // Import your home page or any other page you want to navigate to after logout

class LogoutPage extends StatefulWidget {
  const LogoutPage({ Key? key}) : super(key: key);

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  void logoutUser() {
    // Add your logout logic here
    // For example, clear user session, remove tokens, etc.

    // Navigate to the home page after logout
    
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  LoginPage(onTap: () {  },
        
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return 
      
        Scaffold(
          appBar:
           AppBar(actions: [
          
        
           Image.asset('assets/letter-u.png',),

           const  Padding(padding: EdgeInsetsDirectional.only(start: 350)),
            Image.asset('assets/profile.png'),

          
  ]),
        
          backgroundColor: Colors.black,
          
          
          body: SingleChildScrollView(
            child: Container( width: double.infinity,
                    decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
                    ),child: 
             SafeArea(
              child:  Container( 
                decoration:const  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bye.png"),
              fit: BoxFit.cover,
            ),
                    ),
                    child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               
                    
                      
                      Image.asset('assets/Fancy.gif',width: 200,
                      height: 200,
                      ),
                      const SizedBox(height: 50),
                     RichText(text: const TextSpan(
                      text: 'This is Ubol',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      )
                     )),
                    const   SizedBox(height: 30,),
                      Image.asset('assets/Fancy-2.gif',
                      width:500 ,
                      height:500 ,
                      ),
                     const  SizedBox(height: 30,),
                        
                      // Add any additional UI elements for your logout page
                        
                      // Logout button
                      Row(
                        children: [ Padding(padding: EdgeInsetsDirectional.only(start: 270)),
                          ElevatedButton(
                            onPressed: logoutUser,
                            child: const Text('Log out'),
                          ),
                          const Padding(padding: EdgeInsetsDirectional.only(start: 90)),
                           ElevatedButton(
                            onPressed: ()
                            {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                              return Home();
                            }));
                            },
                            child:  Text('Go back'),
                            style: const ButtonStyle(
                            
                            ),
                                    ),
                        ],
                      ),
                      SizedBox(
                        height: 120,
                      ),
                        Image.asset('assets/logout_banner.png'),
                      ],
                      
                  ),
              ),
              ),
            ),
          ));  
  }
}