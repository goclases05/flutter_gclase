import 'package:flutter/material.dart';

class ListTileMenu extends StatelessWidget {
  String image,name;

  ListTileMenu(this.image,this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(right: 30),
      child: ListTile(
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(30),
            bottomRight: Radius.circular(30) 
            
          )
        ),
        hoverColor: Colors.white38,
        leading: Image.asset(image),
        title:  Text(name,style:const TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
        onLongPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}