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
      //backgroundColor: Colors.blueAccent,
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
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: SizedBox(
                        height: 150,
                        child: Card(
                          color: Colors.red.shade900,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child:
                                CircleAvatar(
                                  backgroundColor: Colors.red.shade900,
                                  radius: 60,
                                  child: const CircleAvatar(
                                    radius: 56,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80'),
                                  ),
                                ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'SAAMUNATI BACHAT',
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
                        'images/pink-cosmos.png',
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

                GridView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) => IconCards(index: index),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/pink-cosmos.png',
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
                ListView.separated(
                    padding: const EdgeInsets.all(15),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10, offset: Offset(10, 10))
                              ]),
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 100,
                                color: Colors.red.shade900,
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'CWDR/ \n974884/9874513365478965',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text('10-06-2019')
                                ],
                              ),
                              const Spacer(),
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  'INR. 10,000.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: 5)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
class IconCards extends StatelessWidget {
  final int index;

  const IconCards({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List iconList = [
      ['images/accounts.png', 'My Account'],
      ['images/e.png', 'Load eSeva'],
      ['images/payment.png', 'Payment'],
      ['images/transfer.png', 'Fund Transfer'],
      ['images/money-transfer.png', 'Schedule Payment'],
      ['images/scan.png', 'Scan To Pay']
    ];
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            iconList[index][0],
            width: 50,
          ),
          Text(
            iconList[index][1],
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

  }
}