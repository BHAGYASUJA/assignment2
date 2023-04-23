import 'package:flutter/material.dart';

class ProfileBottomTab extends StatelessWidget {
  List profileTileList = [
    ['My Wallet', Icons.wallet],
    ['Terms & Polocies', Icons.message_rounded],
    ['About', Icons.info_outline_rounded],
    ['Logout', Icons.logout],
  ];

  ProfileBottomTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          child: IconButton(
            onPressed: () {},
            icon: IconButton(
              padding: const EdgeInsets.only(left: 5, top: 2.5, bottom: 2.5),
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
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
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(35))),
                child: Column(children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 10,
                            spreadRadius: -3,
                          ),
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, -2),
                            blurRadius: 10,
                            spreadRadius: -3,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 5),
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://media.istockphoto.com/id/1334433318/photo/big-sister-warning-little-brother-1988-in-garden.jpg?s=1024x1024&w=is&k=20&c=cAc2IvvXxiTx3KPsJ_NvDbVDeqKJ47z7lKR8qJ6hLl4=',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    'Dennis Callis',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.blue.shade800,
                      ),
                      SizedBox(width: 10),
                      Text('denniscallis@gmail.com')
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.blue.shade800,
                      ),
                      SizedBox(width: 10),
                      Text('+91 965656 21315')
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 35,
                    width: 150,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 109, 57, 129),
                          Color.fromARGB(255, 67, 103, 180)
                        ],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ]),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                          (index) => Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(-2, 2),
                                  blurRadius: 2,
                                  color: Color.fromARGB(31, 177, 177, 177))
                            ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: ListTile(
                          leading: Icon(
                            profileTileList[index][1],
                            color: Colors.blue.shade800,
                          ),
                          title: Text(profileTileList[index][0]),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}