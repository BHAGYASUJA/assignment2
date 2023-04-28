import 'package:assignment3/CompanyUI/secondpage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: firstpage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  bool _isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffecddd6),
                  Color(0xffe0e2f1),
                  Color(0xffebf0f4),
                  Color(0xffe0e2f1),
                  Color(0xffecddd6),
                ],
              ),
              image: DecorationImage(
                  image: AssetImage('images/b1.jpg'),
                  scale: .6)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    padding:
                    const EdgeInsets.only(left: 5, top: 2.5, bottom: 2.5),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Enter the Invoice Number",style: TextStyle(fontSize: 20),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.cyanAccent,
                         // prefixIcon: const Icon(Icons.account_box_sharp),
                          hintText: 'UserName',
                          labelText: 'Eg:652426278',
                          // helperText: "Enter the invoice number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => firstpage()));
                        },
                        child:  Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 15,),
                        ),

                        // FaIcon(FontAwesomeIcons.facebookF).p16(),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue[500], borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => secondpage()));
                        },
                        child:  Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 15,),
                        ),
                      ),
                    ),
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
