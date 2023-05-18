import 'package:assignment3/HotelBukingUI/widget/Title.dart';
import 'package:assignment3/HotelBukingUI/widget/appbar.dart';
import 'package:assignment3/HotelBukingUI/widget/hotelpackage.dart';
import 'package:assignment3/HotelBukingUI/widget/hotlcard.dart';
import 'package:assignment3/HotelBukingUI/widget/popular.dart';
import 'package:assignment3/HotelBukingUI/widget/searchbar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // static final imgs = [
  //   'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //   'https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //   'https://images.pexels.com/photos/261102/pexels-photo-261102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //   'https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //   'https://images.pexels.com/photos/161758/governor-s-mansion-montgomery-alabama-grand-staircase-161758.jpeg?auto=compress&cs=tinysrgb&w=600',
  //   'https://images.pexels.com/photos/594077/pexels-photo-594077.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  // ];
  static final imgs2 = [
    'hotel1',
    'hotel2',
    'hotel3',
    'hotel4',
    'hotel5',
    'hotel6'
  ];
  static final names = [
    'Crown Plaza',
    'Hotel Taj',
    'Grand Hyat',
    'Presidency',
    'Columbus',
    'Kayaloram',
  ];
  static final price = [
    '1200',
    '1500',
    '1700',
    '2000',
    '2500',
    '1000',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.96),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          BookingAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
                SearchBar(),
                TitleWidget(
                  title: "Popular Hotels",
                ),
                PopularHotelArea(),
                HotelPackageTile(),
                HotelPackageCards(
                    image: 'hotel6', name: 'Hotel Prince', rate: '1300'),
                ListView.builder(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: imgs2.length,
                    itemBuilder: (context, index) {
                      return HotelPackageCards(
                          image: imgs2[index],
                          name: names[index],
                          rate: price[index]);
                    })
              ]))
        ],
      ),
      bottomNavigationBar: HotelBottomNavigationBar(),
    );
  }

  BottomNavigationBar HotelBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 0,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ]);
  }
}