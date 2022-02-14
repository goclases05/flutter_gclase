import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/eventos_screen/evento_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light
    ));
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual=0;
  final List<Widget>_paginas=[
    PaginaHome(),
    PaginaUser(),
    PaginaUser(),
    EventosScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Goclases Estudiantes',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Goclases'),
          backgroundColor:Colors.lightBlue[800],
          elevation: 0,
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
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
      ),
    );
  }
}

class PaginaHome extends StatelessWidget {
  const PaginaHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home",style: TextStyle(fontSize: 30),),
    );
  }
}

class PaginaUser extends StatelessWidget {
  const PaginaUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("User",style: TextStyle(fontSize: 30),),
    );
  }
}