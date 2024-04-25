import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubol/user.dart';

class UserPreferences{
  static late SharedPreferences _preferences;
  static const _keyUser ='user';
  static const myUser = User(
    imagepath: "assets/Maria.png",
    name: 'Maria',
    email: 'Mariapovs@gmail.com',
    
    about: "Maria is a 28-year-old woman who lives in New York City. She is known for her reliability, friendliness, and quick thinking. With a passion for exploring new neighborhoods, meeting people from diverse backgrounds, and providing excellent customer service, she thrives on the dynamic nature of her work as an Uber driver. Her job allows her to navigate the city's streets while ensuring passengers reach their destinations safely and efficiently. In her free time, she enjoys trying new restaurants, attending cultural events, and spending time with her friends and family. Overall, Maria is characterized by her professionalism, adaptability, and commitment to customer satisfaction.",
  
  );

  static void setUser(User user) {}
  static Future init () async =>
  _preferences = await SharedPreferences.getInstance();

  static getUser() {}

}