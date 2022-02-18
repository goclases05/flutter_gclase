import 'package:app_gclase/screen/comportamiento_screen/comportamiento_screen.dart';
import 'package:app_gclase/widgets/widgets.dart';
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
    const CursosScreen(),
    EventosScreen(),
    ComportamientoScreen(),
    EventosScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: Colors.white,
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
              padding: const EdgeInsets.only(top: 8),
              child: Badge(
                badgeContent: const Text('9',style: TextStyle(color: Colors.white),),
                child:const Icon(Icons.email_sharp),
                badgeColor: Colors.orange.shade900,
                //position: BadgePosition.topEnd(),
                //animationType: BadgeAnimationType.fade,
                animationDuration: const Duration(milliseconds: 250),
              ),
            ),
            const SizedBox(width: 20),
            Container(
              padding:const EdgeInsets.only(top: 8),
              child: Badge(
                badgeContent: const Text('9',style: TextStyle(color: Colors.white),),
                child:const Icon(Icons.notifications_sharp),
                badgeColor: Colors.red,
                //position: BadgePosition.topEnd(),
                animationType: BadgeAnimationType.scale,
                //animationDuration: Duration(milliseconds: 250),
              ),
            ),
            const SizedBox(width: 20),
            CircleAvatar(
              radius: 15,
              backgroundColor: const Color.fromARGB(255, 159, 214, 241),
              child:Image.asset('assets/perfil.png',)
            ),
            const SizedBox(width: 10,),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.lightBlue[800],
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight:Radius.circular(30),
              bottomRight: Radius.circular(30) 
              
            )
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
                DrawerHeader(
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 2, 96, 150),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.white70,
                        maxRadius: 30,
                        child: Image.asset('assets/perfil.png'),
                      ),
                    ),
                    const ListTile(
                      title: Text('Nombre del usuario',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      subtitle: Text('Usuario: '+'523678',style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                    ),
                  ],
                ),
              ),
              ListTileMenu('assets/inicio.png', 'Inicio'),
              ListTileMenu('assets/datos.png', 'Datos de Inscripción'),
              ListTileMenu('assets/actividades.png', 'Actividades Hoy/ Proximos 7 días'),
              ListTileMenu('assets/pagos.png', 'Pagos'),
              ListTileMenu('assets/circulares.png', 'Circulares'),
              ListTileMenu('assets/encuestas.png', 'Encuestas'),
              ListTileMenu('assets/salir.png', 'Salir'),
            ],
          ),
        ),
        body: _paginas[_paginaActual],
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