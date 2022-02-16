import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({
    Key? key, 
    required this.child,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const _blueBox(),
          SafeArea(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 40),
              child: Image.asset('assets/gclase.png',height: 100,),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class _blueBox extends StatelessWidget {
  const _blueBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height*0.4,
      decoration: blueBackground(),
      child: Stack(
        children: [
          Positioned(top: 90,left: 30,child:_Bubble()),
          Positioned(top: -40,left: -30,child:_Bubble()),
          Positioned(top: -50,right: -20,child:_Bubble()),
          Positioned(bottom: -50,left: 10,child:_Bubble()),
          Positioned(bottom: 120,right: 20,child:_Bubble()),
        ],
      ),
    );
  }

  BoxDecoration blueBackground() {
    return  BoxDecoration(
      gradient: LinearGradient(
        colors:[
          Color.fromARGB(255, 12, 94, 150),
          Colors.lightBlue.shade800,
        ]
      )
    );
  }
}

class _Bubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );
  }
}