import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: details(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class details extends StatelessWidget {
  const details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ratings = 4.5;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Most Luxurious & Peaceful Natural Place',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 4.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(
                                horizontal: .5),
                            itemBuilder: (context, _) =>
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                              // setState(() {
                              //   ratings = rating;
                              //   print('$ratings');
                              // }
                              // );
                            },
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '$ratings Ratings',
                            style: TextStyle(color: Colors.grey.shade400),
                          )
                        ],
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'About Places',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(
                    'The majestic mountains can call tourists to experience the best of what nature has to offer at Mcleodganj – one of the most beautiful places to visit in India. This is among the loveliest Indian destinations for camping, regardless of which season you’re coming in.'),
              ),
              const SizedBox(height: 25),
              const Text(
                'Special Facilities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Icon(Icons.local_parking,size: 25,),
                  ),
                  Card(
                    child: Icon(Icons.support_agent,size: 25),
                  ),
                  Card(
                    child: Icon(Icons.wifi,size: 25),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2034335/pexels-photo-2034335.jpeg?auto=compress&cs=tinysrgb&w=400'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 25),
              const Text(
                'Special Facilities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ),
                  Container(
                    height: 10,
                    child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ),
                  Container(
                    height: 10,
                    child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ),
                  Container(
                    height: 10,
                    child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  )

                  // // Container(
                  //   color: Colors.blueGrey,
                  //   height: 50,
                  //    width: 50,
                  //   decoration: BoxDecoration(
                  //     boxShadow: const [
                  //       BoxShadow(
                  //         color: Colors.black,
                  //         blurRadius: 20.0,
                  //       ),
                  //     ],))

                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //  child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  // ),
                  // Container(
                  //   color: Colors.blueGrey,
                  //   height: 50,
                  //   width: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  // ),
                  // Container(
                  //   color: Colors.blueGrey,
                  //   height: 50,
                  //   width: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  // ),
                  // Container(
                  //   color: Colors.blueGrey,
                  //   height: 50,
                  //   width: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Text("Adult \t 02",style: TextStyle(fontSize: 15,color: Colors.black),),
                  // ),

                ],
              ),
              Spacer(),
              SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Explore Now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ]),
                  ))
            ],
          ),
        ),
      ),

    );
  }
}
