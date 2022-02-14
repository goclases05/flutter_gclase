
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'escritorio_screen.dart';

class DataDom extends StatefulWidget {
  const DataDom({ Key? key }) : super(key: key);

  @override
  State<DataDom> createState() => _DataDomState();
}


class _DataDomState extends State<DataDom> {
  void ini(){
    Timer(
      const Duration(seconds: 5),
      ()=>Navigator.pushReplacement(context, 
        PageRouteBuilder(
          transitionDuration:const Duration(seconds: 1),
          transitionsBuilder: (BuildContext context,Animation<double> animation,Animation<double> secanimation,Widget child){
            animation=CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
            return ScaleTransition(alignment: Alignment.center ,scale: animation,child: child,);
          },
          pageBuilder: (BuildContext context,Animation<double> animation,Animation<double> secanimation){
                return const EscritorioScreen();
          })
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    
    final TextTheme textTheme=Theme.of(context).textTheme;
    ini();
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.lightBlue.shade800),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/gclase.png',width: 200,height: 100,),
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      const Text(
                        "Plataforma Educativa",
                        style: TextStyle(
                          color:Colors.white54,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex:1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Cargando Datos",style: textTheme.caption)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}