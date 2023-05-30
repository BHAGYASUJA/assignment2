import 'dart:async';
import 'package:assignment3/Fitness%20App/Constants/Images.dart';
import 'package:assignment3/Fitness%20App/Constants/colors.dart';
import 'package:assignment3/Fitness%20App/Screens/LoginScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customGrey,
      body: Center(
        child: TweenAnimationBuilder(
          curve: Curves.easeInOutBack,
          duration: const Duration(milliseconds: 1500),
          tween: Tween<double>(
            begin: 0,
            end: 1,
          ),
          builder: (context, val, child) => Material(
            color: CustomColors.halfWhite,
            elevation: 0,
            borderRadius: BorderRadius.circular(500),
            child: Lottie.asset(
              Images.splashAnim,
              frameRate: FrameRate(60),
              width: context.percentWidth * (double.parse(val.toString()) * 55),
            ),
          ),
        ),
      ),

    );
  }
}
