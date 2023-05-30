import 'package:assignment3/MyLibary/EntryPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(){
  runApp(MaterialApp(home: HomeList(),));

}

class HomeList extends StatefulWidget {


  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {

 // List<Map<String, dynamic>> task = [];

 // final tbox = Hive.box('task_box');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: Icon(Icons.menu_outlined),
          title: RichText(
            text: const TextSpan(
                text: 'My List App!',
                style: TextStyle(fontSize: 20),
               // children: [TextSpan(text: ' '), TextSpan(text: 'MAUSAM')]
          ),
          ),
        ),
            body: SingleChildScrollView(
              child:
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20
                  ),
                  itemBuilder: (ctx,index){
                    return Card(
                      child: Text("Grid $index"),
                    );
                  }
              ),

    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
             label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.queue_play_next,
                color: Colors.grey,
              ),
              label: 'Share'
          ),

        ],
      ),
    );
  }

 /// showForm(BuildContext context, param1) {}

  void showForm(BuildContext context, int? id) async {
    if (id != null) {
     // final ex_task = task.firstWhere((element) => element['key'] == id);
      //name_controller.text = ex_task['name'];
      //details_controller.text = ex_task['details'];
    }
  }
  }
