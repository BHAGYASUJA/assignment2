// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class loginPage extends StatefulWidget {
//   const loginPage({Key? key}) : super(key: key);
//
//   @override
//   State<loginPage> createState() => _loginPageState();
// }
//
// class _loginPageState extends State<loginPage> {
//   int activeIndex = 0;
//   final List<String>_images = [
//     '',
//     '',
//     '',
//     '',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               SizedBox(height: 50,),
//               FadeInUp(
//                 child:Container(
//                   height: 350,
//                   child: Stack(
//                     children: _images.asMap().entries.map((e) {
//                       return Positioned(child: )
//                     })
//                   ),
//                 )
//
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:ui';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(DevicePreview(
  builder: (BuildContext context) => MaterialApp(
    useInheritedMediaQuery: true,
    home: Pro(),
    debugShowCheckedModeBanner: false,
  ),
));



class Pro extends StatelessWidget {
  _launchURL() async {
    const url = 'https://creative-tim.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://plus.unsplash.com/premium_photo-1677517547267-1e3ef52b6ccb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"),
                        fit: BoxFit.cover))),
            Container(
              margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 16.0, bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Coded By",
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3)),
                          SizedBox(width: 10.0),
                          Image.asset("https://images.unsplash.com/photo-1491975474562-1f4e30bc9468?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80", scale: 7.0)
                        ],
                      ),
                      Container(
                          child: Center(
                              child: Column(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width / 1.5,
                                      child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text("Now UI",
                                              style: TextStyle(
                                                  color: Colors.black12,
                                                  fontWeight: FontWeight.w600)))),
                                  Container(
                                      width: MediaQuery.of(context).size.width / 1.5,
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text.rich(TextSpan(
                                            text: "Flutter",
                                            style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 67,
                                                fontWeight: FontWeight.w600),
                                            children: <InlineSpan>[
                                              WidgetSpan(
                                                  child: Container(
                                                      padding: EdgeInsets.all(2.0),
                                                      margin: EdgeInsets.fromLTRB(
                                                          16.0, 0.0, 0, 50.0),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius.circular(4.0),
                                                          color: Colors.black),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(
                                                            top: 0,
                                                            bottom: 0,
                                                            left: 4,
                                                            right: 4),
                                                        child: Text("PRO",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.w600,
                                                              fontSize: 19,
                                                            )),
                                                      ))),
                                            ])),
                                      ))
                                ],
                              ))),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                              "Take advantage of all the features and screens made by Creative Tim, coded on Flutter for both",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.network("https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", scale: 2.6),
                                SizedBox(width: 30.0),
                                Image.asset("https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", scale: 2.6)
                              ]),
                          SizedBox(height: 16.0),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                //textColor: Colors.white,
                               /// color: Colors.indigo,
                                onPressed: _launchURL,
                               // shape: RoundedRectangleBorder(
                                 // borderRadius: BorderRadius.circular(4.0),
                               // ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.0,
                                        right: 16.0,
                                        top: 12,
                                        bottom: 12),
                                    child: Text("GET STARTED",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}