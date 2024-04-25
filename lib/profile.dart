import 'package:flutter/material.dart';
import 'package:ubol/edit_profile.dart';
import 'package:ubol/numbers_widget.dart';
import 'package:ubol/user.dart';
import 'package:ubol/user_preferences.dart';
import 'package:ubol/widgets/button_widget.dart';
import 'package:ubol/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 111, 126),
        title: const Text("Ubol"),
        titleTextStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 29,
        ),
        actions: [Image.asset("assets/profile.png")],
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        const Padding(padding: EdgeInsetsDirectional.only(bottom: 30)),
        ProfileWidget(
          imagepath: user.imagepath,
          onClicked: () async {
            await Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const EditProfilePage();
            }));
            setState(() {});
          },
        ),
        buildName(user),
        const Padding(padding: EdgeInsetsDirectional.only(bottom: 24)),
        Center(child: buildUpgradeButton()),
        NumbersWidget(),
        buildOffers(user),
        buildAbout(user),
      ]),
    );
  }

  Widget buildName(User user) => Column(children: [
        Text(
          user.name,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const Padding(padding: EdgeInsetsDirectional.only(bottom: 20)),
        Text(
          user.email,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        )
      ]);
  Widget buildUpgradeButton() =>
      ButtonWidget(text: 'Upgrade to Pro', onClicked: () {});
  Widget buildOffers(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsetsDirectional.only(start: 78, bottom: 38)),
              Text('Offers. ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ]),
      );
  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsetsDirectional.only(start: 78, bottom: 38)),
            const Text('About. ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Text(user.about,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black)),
                    SizedBox(height: 30,),
                    Center(child: Image.asset('assets/profile_banner.gif'))
          ],
        ),
      );
}
