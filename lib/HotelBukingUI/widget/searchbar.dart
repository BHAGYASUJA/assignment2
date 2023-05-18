import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(2, 7), color: Colors.grey[400]!, blurRadius: 3)
            ]),
        child: TextField(
          decoration: InputDecoration(
              isDense: true,
              prefixIcon: Icon(
                Icons.search,
                size: 25,
                color: Colors.grey,
              ),
              filled: true,
              enabled: true,
              hintText: 'Search for Hotel',
              hintStyle: TextStyle(color: Colors.grey),
              fillColor: Colors.white,
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
    );
  }
}