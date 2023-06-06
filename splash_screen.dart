

import 'package:flutter/material.dart';
import 'package:shopapp/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
    void initState() {
      super.initState();
      // splashTimer();
    }


    splashTimer() async {
      return Future.delayed(const Duration(seconds: 3)).then((value) async {
        //TODO: Have to add the logic for screen opening after reading the  cache

        print(" runnig after 3 seconds and navigating to the home page ");

        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ), (route) => false);
      });
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img/splashupper.png",), 
              fit: BoxFit.cover)
            ),
          ),
          const Center(
           child: 
            Text('welcome',
            style:  TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img/splashlower.png",), 
              fit: BoxFit.cover)
            ),
          ),
          )
        ],
      )
    );
  }
}