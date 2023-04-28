
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: BankingHomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class BankingHomeScreen extends StatelessWidget {
  static String id = 'banking_home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
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
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
               // const AccountTopcard(),
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
                                      const SizedBox(height: 5),
                                      //ShowBalance(),
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


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/bank.png',
                        width: 40,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'WOULD YOU LIKE TO?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                // GridView.builder(
                //   padding: const EdgeInsets.all(15),
                //   itemCount: 6,
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 3,
                //     mainAxisSpacing: 10,
                //     crossAxisSpacing: 10,
                //   ),
                //   itemBuilder: (context, index) => IconCards(index: index),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/bank.png',
                        width: 40,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'LAST TRANSACTIONS',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}