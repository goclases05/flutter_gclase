import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../cursos_screen/cursos_screen.dart';
import '../eventos_screen/evento_screen.dart';

class EscritorioScreen extends StatefulWidget {

  @override
  _EscritorioScreenState createState() => _EscritorioScreenState();
}

class _EscritorioScreenState extends State<EscritorioScreen> {
  int _paginaActual=0;
  final List<Widget>_paginas=[
    CursosScreen(),
    EventosScreen(),
    EventosScreen(),
    EventosScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Image.asset('assets/gclase.png',width: 80,),
          backgroundColor:Colors.lightBlue[800],
          elevation: 0,
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Badge(
                badgeContent: Text('9',style: TextStyle(color: Colors.white),),
                child: Icon(Icons.email_sharp),
                badgeColor: Colors.red,
                //position: BadgePosition.topEnd(),
                //animationType: BadgeAnimationType.fade,
                animationDuration: Duration(milliseconds: 250),
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Badge(
                badgeContent: Text('9',style: TextStyle(color: Colors.white),),
                child: Icon(Icons.notifications_sharp),
                badgeColor: Colors.red,
                //position: BadgePosition.topEnd(),
                animationType: BadgeAnimationType.scale,
                //animationDuration: Duration(milliseconds: 250),
              ),
            ),
            const SizedBox(width: 20),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 159, 214, 241),
              child:Image.asset('assets/perfil.png')
            ),
            const SizedBox(width: 10,),
          ],
        ),
        body:_paginas[_paginaActual],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (index){
              setState(() {
                _paginaActual=index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.lightBlue[800],
            selectedItemColor: Colors.white,
            unselectedItemColor: Color.fromARGB(127, 255, 255, 255) ,//colorScheme.onSurface.withOpacity(.50),
            selectedLabelStyle: textTheme.caption,
            unselectedLabelStyle: textTheme.caption,
            currentIndex: _paginaActual,
            items:const [
            BottomNavigationBarItem(
              label: 'Cursos',
              icon: Icon(Icons.library_books),
            ),
            BottomNavigationBarItem(
              label:'Notas',
              icon: Icon(Icons.rule),
            ),
            BottomNavigationBarItem(
              label: 'Conducta',
              icon: Icon(Icons.insert_emoticon),
            ),
            BottomNavigationBarItem(
              label: 'Eventos',
              icon: Icon(Icons.calendar_month),
            ),
          ],
          ),
        ),
      );
  }
}