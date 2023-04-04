import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main()
// {
//   runApp(MaterialApp(home: gridui(),));
// }

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home: gridui(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class gridui extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final List<String> listimages = ["images/m1.jpg",
    "images/m2.jpg",
    "images/m3.jpg",
    "images/m4.jpg",
    "images/m5.jpg",
    "images/m6.jpg"];

  //final List<String> images = [""];
  List screens = const[
    Text("Home"),
    Text("Favorite"),
    Text("Camera"),
    Text("Home"),
    Text("Search"),

  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    //var listTitle;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Playlists", style: TextStyle(color: Colors.cyanAccent),),
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.shifting,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          // onTap: (tapindex){
          //   setState(() {
          //     index =tapindex;
          //   });},
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,),backgroundColor:Colors.black, label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite,),backgroundColor:Colors.black, label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.people,), backgroundColor:Colors.black,label: "People"),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_rounded,), backgroundColor:Colors.black,label: "Camera"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_sharp,),backgroundColor:Colors.black, label: "Favorite"),

          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(
                children: [
                  screens[index],
                  TextField(controller: _searchController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[600]),
                        fillColor: Colors.white,
                        iconColor: Colors.pink,
                        hintText: 'Search...',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear, color: Colors.pink,),
                          onPressed: () => _searchController.clear(),
                        ),
                        prefixIcon: IconButton(
                          icon: Icon(Icons.search, color: Colors.pink,),
                          onPressed: () {},
                        )
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: listimages.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1,),
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(4.0),
                        //color: Colors.purpleAccent,
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, top: 6.0, bottom: 2.0),
                            child: Center(
                              child:
                              Image.asset(
                                (listimages[index]), fit: BoxFit.fill,),
                              //child: Text(listTitle[index]),
                            )
                          // Text(${(listTitle[index]}),
                          // style: TextStyle(fontSize: 14, color: Colors.black54),)),
                        ),
                      );
                    },)
                ])
        )
    );
  }

  void setState(Null Function() param0) {}
}

