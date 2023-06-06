import 'package:flutter/material.dart';
import 'package:shopapp/pages/splash_screen.dart';

void main(){
  runApp(MyApp());



}

class MyApp extends StatelessWidget {
  @override
   Widget build( BuildContext context){
      return MaterialApp(
        title: "Shop App",
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
   }
}
