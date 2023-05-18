import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HotelPackageCards extends StatelessWidget {
  const HotelPackageCards(
      {super.key, required this.image, required this.name, required this.rate});
  final String image;
  final String name;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 5,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/asset/$image.jpeg')),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: Colors.black),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Text(
                              "A five star Hotel in Kochi",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text('\$$rate /night'),
                            Wrap(
                              spacing: 5,
                              alignment: WrapAlignment.center,
                              direction: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2, left: 3),
                                  child: Icon(
                                    Icons.train,
                                    color: Colors.purple,
                                  ),
                                ),
                                Icon(
                                  Icons.airport_shuttle_sharp,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.flight,
                                  color: Colors.purple,
                                ),
                                Icon(
                                  Icons.radio,
                                  color: Colors.purple,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 40,
                          right: 0,
                          child: Material(
                            elevation: 10,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            child: Container(
                              alignment: Alignment.center,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10))),
                              height: 40,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Book",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}