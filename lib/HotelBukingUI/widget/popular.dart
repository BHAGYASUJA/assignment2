import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopularHotelArea extends StatelessWidget {
  const PopularHotelArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: []),
      padding: EdgeInsets.only(right: 20),
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.36,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PopularHotelCard(
                imagename: "hotel1",
                title: "Crown Plaza",
                desc: 'A 5 star Hotel in Kochi',
                rate: '1000'),
            PopularHotelCard(
                imagename: "hotel2",
                title: "Hotel Hyat",
                desc: "5 star Hotel in Edappally",
                rate: "1500"),
            PopularHotelCard(
                imagename: "hotel3",
                title: "Hotel Presidency",
                desc: "5 star Hotel in vytila",
                rate: "1700"),
          ],
        ),
      ),
    );
  }
}

class PopularHotelCard extends StatelessWidget {
  const PopularHotelCard(
      {super.key,
        required this.imagename,
        required this.title,
        required this.desc,
        required this.rate});
  final String imagename;
  final String title;
  final String desc;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 3,
        child: Container(
          height: 210,
          width: 160,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5, 5),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ], borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('Assets/images/$imagename.jpeg')),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 3),
                child: Text(
                  desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                child: Row(
                  children: [
                    Text(
                      '\$$rate / night',
                      style: TextStyle(color: Colors.purple),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(color: Colors.purple),
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                      color: Colors.purple,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}