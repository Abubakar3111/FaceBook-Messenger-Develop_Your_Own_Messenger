import 'dart:async';

import 'package:flutter/material.dart';

import 'MainScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void check() async{

      Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>

          MainScreen())));

  }
  void initState() {
    // TODO: implement initState
    super.initState();
    check();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(
      backgroundColor: Colors.white,
body: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('assets/messenger_logo.jpg',height: height*0.7,),
     Column(children: [Text("from",style: TextStyle(color: Color(0xffd6d6d6),fontSize: height*0.02),),
       Image.asset('assets/meta.png',height: height*0.04,)
     ],)  ],
),
    );
  }
}
