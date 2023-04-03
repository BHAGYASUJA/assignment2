import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: Container(
          padding: EdgeInsets.only(top: 70,left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton (
                alignment: Alignment.topRight,
                icon: const Icon(Icons.arrow_back,color: Colors.black,),
                onPressed: () {
                },
              ),
              Text("Kochi",textAlign:TextAlign.right),


              Text("Farmers Fresh Zone",
                style: TextStyle(fontSize: 25,
                    fontStyle:FontStyle.italic,
                    fontFamily: 'Open Sans',
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),),
              TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    iconColor: Colors.cyan,
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),)),
              Row(
                children: [
                  // IconButton(onPressed: (){}, icon:Icons)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
