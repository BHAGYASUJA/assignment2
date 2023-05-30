import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: Farmer(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Farmer extends StatefulWidget {
  @override
  State<Farmer> createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {
  List images = [
    "https://images.unsplash.com/photo-1506368249639-73a05d6f6488?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1437750769465-301382cdf094?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80",
    "https://images.unsplash.com/photo-1505576399279-565b52d4ac71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1621459555843-9a77f1d03fae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1610415946035-bad6fc9f5b8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: true,
            pinned: true,
            actions: const [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.location_on_outlined)),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "Kochi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Search for Vegetables and Fruits...',
                    prefixIcon: Icon(Icons.search),
                  )),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 20,
                      width: 75,
                      child: const Center(
                        child: Text(
                          "OFFERS",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      height: 25,
                      width: 75,
                      child: const Center(
                        child: Text(
                          "VEGETABLES",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 75,
                    child: const Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 75,
                    child: const Center(
                      child: Text(
                        "EXOTIC",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: List.generate(
                  5,
                  (index) => Container(
                      decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          (images[index]),
                        )),
                  )),
                ),
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: .6,
                  // height: MediaQuery.of(context).size.height,
                  height: 150,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeInBack,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  enableInfiniteScroll: true,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.timer),
                          SizedBox(
                            height: 10,
                          ),
                          Text("30 MINS POLICY")
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.camera_front_outlined),
                          SizedBox(
                            height: 10,
                          ),
                          Text("TRACEABLITY")
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.home_work),
                          SizedBox(
                            height: 10,
                          ),
                          Text("LOCAL SOURCING")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              VegGrid(),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Best Selling Product",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              BestGrid(),
              // const SizedBox(
              //   height: 10,
              // ),
              ElevatedButton(onPressed: (){}, child:
              Text("View More"),),
            ]),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class VegGrid extends StatelessWidget {
  List<String> images = [
    "https://www.shutterstock.com/image-vector/best-offer-illustration-rays-bold-600w-756524578.jpg",
    "https://media.istockphoto.com/id/519663318/photo/tomatos-background.jpg?s=612x612&w=is&k=20&c=79XzSJsgb4aHVpE7siXRCaYUe3lGiJT-ySgzml7VD8E=",
    "https://media.istockphoto.com/id/90965948/photo/pineapple-isolated.jpg?s=612x612&w=is&k=20&c=gYD7rBaiCOyqZqLXEeMCmuMI0utiWaxQlZV-ONPCEbw=",
    "https://media.istockphoto.com/id/174894932/photo/fresh-vegetables.jpg?s=612x612&w=is&k=20&c=SA2-JF-5NmA05FzLzBZqBxNern2IQmfFfgTK9_ipub0=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGnnQcNCeHzbkq9lu8hm_yj4EC9tvk4_5_TA&usqp=CAU",
    "https://images.unsplash.com/reserve/tHTHup3YTN6XsLwf43vY_IMG_8003.jpg?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80",
    "https://cdn.shopify.com/s/files/1/0400/4891/8573/articles/WhatsApp_Image_2021-04-06_at_09.10.17_700x.jpg?v=1651813678",
  ];

  List<String> names = [
    "Offers",
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors",
    "Gourment Salads"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 90,
                // height: MediaQuery.of(context).size.height / 5,
                // width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
            ],
          );
        });
  }
}

class BestGrid extends StatelessWidget {
  List<String> images = [
    "images/carrot.jpg",
    "images/banana.jpg",
    "images/potato.jpg",
    "images/brocoli.jpg",
    "images/tomato.jpg",
    "images/watermelon.jpg",
  ];

  List<String> names = [
    "Carrot",
    "Banana",
    "Potato",
    "Brocoli",
    "Tomato",
    "Watermelon",
  ];

  List price =[
    "35",
    "45",
    "30",
    "25",
    "45",
    "20",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              height: 90,
              width: 90,
              // height: MediaQuery.of(context).size.height / 5,
               //  width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[index])),
                ),


              ),
              const SizedBox(
              height: 4,
               ),
               Text(names[index]),
             // Text(price[index]),
            ],
          );
        });
  }
}
