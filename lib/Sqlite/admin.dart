
import 'package:flutter/material.dart';

import 'SQLHelper.dart';

class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  var data;
  void delet(int id)async {
    await SQLHelper.Deleteuser(id);
    Refresh();
  }
  @override
  void initState() {
    Refresh();
    super.initState();
  }
  void Refresh() async{
    var mydata  = await SQLHelper.getAll();
    setState(()   {
      data = mydata;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Panel'),),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,int index){
            return Card(
              color: Colors.deepPurple[200],
              child: ListTile(
                title: Text('${data[index]['name']}'),
                trailing: IconButton(onPressed: (){
                  delet(data[index]['id']);
                },icon: Icon(Icons.delete),),
              ),
            );
          }),

    );
  }
}
