import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class SettingsWidget extends StatelessWidget {
  final String imagepath;
  final bool isEdit;
  final VoidCallback onClicked;

const SettingsWidget({
  Key? key,
  required this.imagepath,
  this.isEdit = false,
  required this.onClicked,
}):super(key: key);
 

  @override
  Widget build(BuildContext context) {
   final color= Theme.of(context).colorScheme.primary;
   return Center(
    child:Stack(
      children: [
     buildImage(),
     Positioned(
      bottom: 0,
      right: 4,
      child: 
     buildEditIcon(color)
    )]
   ));
  }
  Widget buildImage(){
    final image = AssetImage(imagepath);
    return ClipOval(
      child: Material(color: Colors.transparent,
        child: Ink.image(image: image, 
        fit:BoxFit.cover,
        height: 128,
        width: 128,
        child: InkWell(onTap: onClicked,),
        ),
      
    )
    );
   
  }
  
 Widget buildEditIcon(Color color)=> buildCircle(
  color: color,
  all:8,
   child: 
     Icon(
     isEdit ? Icons.photo_library : Icons.edit,
      size: 20,
     ),
 );
 Widget buildCircle({
  required Widget child,
  required double all,
  required Color color,
 })=>
 ClipOval(
   child: 
     Container(
      padding: EdgeInsets.all(4),
      color: color,
      child: child,
     ),   
 );
  
}