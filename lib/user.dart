class User{
final String imagepath;
final String name;
final String email;
final String about;



const User({
 required this.imagepath,
 required this.name,
 required this.email,
 required this.about,
 
});
 User copy({
  String? imagepath,
  String? name,
  String? email,
  String? about,
  String? password,
 }) =>

 User(
  imagepath: imagepath??this.imagepath,
  name: name??this.name,
  email: email??this.email,
  about: about??this.about, 
  
 );
 static User fromJson(Map<String, dynamic> json) => User(
   imagepath:json ['imagepath'],
  name:json['name'],
  email:json['email'],
  about: json['about'],
    
 );

Map<String , dynamic>toJson()=> {
  'imagepath':imagepath,
  'name':name,
  'email':email,
  'about': about,

};
}