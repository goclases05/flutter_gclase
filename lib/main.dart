import 'package:app_gclase/screen/Escritorio_screen/escritorio_screen.dart';
import 'package:app_gclase/screen/data_dom_screen.dart';
import 'package:app_gclase/screen/home_screen.dart';
import 'package:app_gclase/screen/login_screen/login_screen.dart';
import 'package:app_gclase/screen/screen.dart';
import 'package:app_gclase/theme.dart';
import 'package:app_gclase/widgets/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



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

  @override
  Widget build(BuildContext context) {
    


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Goclases Estudiantes',
      initialRoute: 'Login',
      routes: {
        'Login':   (_)=>const LoginScreen(),
        'Splash':(_)=>DataDom(),
        'Escritorio':(_)=>EscritorioScreen(),
        
      },
      theme:theme(), 
      
    );
  }
}

