
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardsBottomTab extends StatelessWidget {
  const RewardsBottomTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  IconButton(
                    padding:
                    const EdgeInsets.only(left: 5, top: 2.5, bottom: 2.5),
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Color(0xff4f86dc),
                    ),
                  ),
                  const Text(
                    'Rewards Wallet',
                    style: TextStyle(
                        color: Color(0xff4f86dc),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
          //  BalanceTopContainer(),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffe7e4eb),
                        boxShadow: [
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
                      ),
                      child: TabBar(
                        indicator: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xff3834a3),
                              width: 3,
                            ),
                          ),
                          color: Colors.white,
                        ),
                        labelColor: Color(0xff3834a3),
                        unselectedLabelColor: Colors.grey,
                        overlayColor:
                        MaterialStateProperty.all<Color?>(Colors.red),
                        indicatorColor: const Color(0xff4080e6),
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.gift,
                                  size: 15,
                                ),
                                SizedBox(width: 10),
                                Text('Rewards')
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.local_atm,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text('Transactions')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        RewardsTab(),
                        Container(
                          color: Colors.red,
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RewardsTab extends StatelessWidget {
  const RewardsTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // CustomChip(label: 'All'),
                // CustomChip(label: 'Direct rewards'),
                // CustomChip(
                //   label: 'Indirect Rewards',
                //   color: Color(0xff3834a3),
                // ),
              ]),
        ),
        Flexible(
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            itemCount: 15,
            itemBuilder: (context, index) => RewardsTile(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
        )
      ],
    );
  }}
class RewardsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var randomNumber = Random().nextInt(266278877) * 26627;
    var randomIndexs = Random().nextInt(18) * 4;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        minLeadingWidth: 30,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '$randomIndexs',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        title: Text(
          'Order ID - $randomNumber',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                ' Valid Till',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                'Jan 27 2023',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
