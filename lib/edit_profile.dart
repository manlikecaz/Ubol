import 'package:flutter/material.dart';
import 'package:ubol/widgets/button_widget.dart';
import 'package:ubol/widgets/profile_widget.dart';
import 'package:ubol/widgets/textfield_widget.dart';
import 'package:ubol/user.dart';
import 'package:ubol/user_preferences.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 121, 169),
        title: const Text("Ubol"),
        titleTextStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 29,
        ),
        actions: [Image.asset("assets/profile.png")],
      ),
      body:   Stack(
        children: [ Container(width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black, Color.fromARGB(255, 240, 244, 245), Color.fromARGB(255, 100, 105, 111),Color.fromARGB(255, 54, 55, 43)],
          begin:Alignment.topLeft ,
          end: Alignment.bottomRight,
          )
        ),
        ),ListView(
              physics: const BouncingScrollPhysics(),
              children: [   const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
              ProfileWidget(
                    imagepath: user.imagepath,
                    isEdit: true,
                    onClicked: () async {},
                  ),
           TextFieldWidget(
            label: "Full Name",
            text: user.name,
            onChanged: (name) => user= user.copy(name :name),
           ),
           TextFieldWidget(
            label: "Full email",
            text: user.email,
            onChanged: (email) => user.copy(email :email)
           ),
           TextFieldWidget(
            label: "About ",
            text: user.about,
            maxLines: 5,
            onChanged: (about)=> user.copy(about :about)
           ),
           ButtonWidget(text: 'save', onClicked: 
          (){UserPreferences.setUser(user);
             Navigator.of(context).pop();
          }
          )
            ]
            ),
      ])
    );
  }
}