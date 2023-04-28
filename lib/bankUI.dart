import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: bank(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class bank extends StatefulWidget {
  const bank({Key? key}) : super(key: key);

  @override
  State<bank> createState() => _bankState();
}

class _bankState extends State<bank> {
  @override
  Widget build(BuildContext context) {

    List iconList = [
      ['imagesmy_account_icon.png', 'My Account'],
      ['assets/banking app/eseva_icon.png', 'Load eSeva'],
      ['assets/banking app/payment_icon.png', 'Payment'],
      ['assets/banking app/transfer_icon.png', 'Fund Transfer'],
      ['assets/banking app/schedule_ion.png', 'Schedule Payment'],
      ['assets/banking app/scan_to_pay_icon.png', 'Scan To Pay']
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code,
              size: 30,
            ),
          )
        ],
        title: RichText(
          text: const TextSpan(
              text: 'Welcome!',
              style: TextStyle(fontSize: 20),
              children: [TextSpan(text: ' '), TextSpan(text: 'MAUSAM')]),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 230,
            ),
            Container(
              height: 100,
              color: Colors.red.shade900,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                    height: 180,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red.shade900,
                              radius: 60,
                              child: const CircleAvatar(
                                radius: 56,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80 '),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'SHIHAB K SALEEM',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                 // const SizedBox(height: 5),
                                 // ShowBalance(),
                                  const SizedBox(height: 5),
                                  const Text(
                                    '683684279511024',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
        // Card(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Image.asset(
        //         iconList[index][0],
        //         width: 50,
        //       ),
        //       Text(
        //         iconList[index][1],
        //         textAlign: TextAlign.center,
        //         style: const TextStyle(fontWeight: FontWeight.bold),
        //       ),
        //     ],
        //   ),
        // ),
          ],
        ),

      ),
    );
  }
}
