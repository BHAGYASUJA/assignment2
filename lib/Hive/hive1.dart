import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('Call_box');
  runApp(const MaterialApp(
    home: hive1(),
  ));
}
class hive1 extends StatefulWidget {
  const hive1({Key? key}) : super(key: key);

  @override
  State<hive1> createState() => _hive1State();
}

class _hive1State extends State<hive1> {

  ///Create List For Store Data
  List<Map<String, dynamic>> ListBook = [];

  ///Create Box For  All of your data is stored in boxes.

  final hivebox = Hive.box('Call_box');

  @override
  void initState() {
    // TODO: implement initState
    loadRecent();
    super.initState();
  }

  void loadRecent() {
    final data = hivebox.keys.map((id) {
      final value = hivebox.get(id);
      return {"key": id, 'name': value['name'], 'number': value['number']};
    }).toList();
    setState(() {
     ListBook = data.reversed.toList();
    });
  }

  Future<void> createTask(Map<String, String> Book) async {
    await hivebox.add(Book);
    loadRecent();
  }

 Future <void> updateTask(int id, Map<String, dynamic> addBook) async {
   await hivebox.put(id, addBook);
   loadRecent();
  }
 Future<void> deleteContact(int key) async {
    await hivebox.delete(key);
    loadRecent();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Contacts', style: TextStyle(color: Colors.black,fontSize: 35),),
        centerTitle: true,
     ),
      body: ListBook.isEmpty
          ?  Center(
        child: Container(
         // height: 10,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    ('https://images.unsplash.com/photo-1523966211575-eb4a01e7dd51?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=410&q=80'),
                  )),
            ),

                child: Column(
                  children: [

           Text("Currently No Numbers Added",style: TextStyle(fontSize: 25,fontWeight: FontWeight.normal),),
          ]
          ),
              ),
            )
          : ListView.builder(
              itemCount: ListBook.length,
              itemBuilder: (context, index) {
                // final tsk = task[index];
                return Card(
                  color: Colors.lightGreenAccent,
                  margin: EdgeInsets.all(10),
                 // elevation: 3,
                  child: ListTile(
                    title: Text(ListBook[index]['name']),
                    subtitle: Text(ListBook[index]['number']),
                    trailing: Wrap(
                      //mainAxisAlignment: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () {
                          showForm(context, ListBook[index]['key']);
                          }, icon: Icon(Icons.edit)),

                        IconButton(onPressed: () {
                          deleteContact(ListBook[index]['key']);
                        }, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }),

      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context, null),
        child: Icon(Icons.add),
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
                Icons.share,
                color: Colors.green,
              ),
              label: 'Share'),
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

  final TextEditingController name_controller = TextEditingController();
  final TextEditingController num_controller = TextEditingController();

  void showForm(BuildContext context, int? id) async {

    if (id != null) {
      final update_task = ListBook.firstWhere((element) => element['key'] == id);
      name_controller.text =update_task ['name'];
      num_controller.text =update_task ['number'];
    }
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        elevation: 5,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //Image.network("https://images.unsplash.com/photo-1613993995046-07bce4b0bfed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"),
                ),
                TextField(
                  controller: num_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Mobile Number"),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        createTask({
                          'name': name_controller.text,
                          'number': num_controller.text
                        });
                      }
                      if(id != null){
                        updateTask(id,{'name':name_controller.text,'number':num_controller.text});
                      }
                      name_controller.text = "";
                      num_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? "Add number " : "Update Number"))
              ],
            ),
          );
        });
  }




}
