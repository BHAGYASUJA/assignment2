import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // await Hive.openBox('Call_box');
  runApp(const MaterialApp(
    home: FirstPage(),
  ));
}
Color tdBGColor = Color(0xFFEEEFF5);

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:  tdBGColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu,color: Colors.black,size: 30,),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("https://images.unsplash.com/photo-1543427127-c331ce4346b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80"),
              ),
            )
          ],
        ) ,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            ///Search Box
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search,color: Colors.black,size: 20,),
                  prefixIconConstraints: BoxConstraints(maxHeight: 20,minWidth: 25),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ),
            Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50,bottom: 20),
                      child: Text(
                        "Notes",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      child: ListTile(
                        onTap: (){

                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        tileColor:Colors.white,
                        leading: Icon(Icons.check_box,color: Colors.blue,),
                        title: Text('Add To Mail',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      trailing: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.delete,size: 25,),
                      ),
                      ),
                    )
                  ],
                )
            )

          ],
        ),
      ),
    );
  }
}
