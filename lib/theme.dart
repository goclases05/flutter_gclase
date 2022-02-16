

import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
        //primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.grey[200],
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color:Colors.black12),
    gapPadding: 10,
  );
  return InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:const EdgeInsets.symmetric(horizontal: 42,vertical: 20),
          enabledBorder: outlineInputBorder,
          focusedBorder:outlineInputBorder, 
          border: outlineInputBorder
      );
}

/*AppBarTheme appBarTheme() {
  return const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 20)
      );
}*/