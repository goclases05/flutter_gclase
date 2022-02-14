import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget {
  const PruebaScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Text("No se encontraron eventos registrados en esta fecha",
        style: TextStyle(
          fontSize:25,
          color: Colors.lightBlue,
          fontWeight:FontWeight.bold
        ),
      ),

    );
  }
}