import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('task_box');
  runApp(const MaterialApp(
    home: MyTODo(),
  ));
}

class MyTODo extends StatefulWidget {
  const MyTODo({Key? key}) : super(key: key);

  @override
  State<MyTODo> createState() => _MyTODoState();
}

class _MyTODoState extends State<MyTODo> {

  /// To Store Task From Hive db
  List<Map<String, dynamic>> task = [];

  final tbox = Hive.box('task_box');
  @override
  void initState() {
    // TODO: implement initState
    loadTask();
    super.initState();
  }

  void loadTask() {
    final data = tbox.keys.map((id) {
      final value = tbox.get(id);
      return {"key": id, 'name': value['name'], 'details': value['details']};
    }).toList();
    setState(() {
      task = data.reversed.toList();
    });
  }

  Future<void> createTask(Map<String, String> task) async {
    await tbox.add(task);
    loadTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: task.isEmpty
          ? const Center(
              child: Text(
                "No data ",
                style: TextStyle(fontSize: 40),
              ),
            )
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
               // final tsk = task[index];
                return Card(
                  color: Colors.pinkAccent,
                  margin: EdgeInsets.all(10),
                  elevation: 3,
                  child: ListTile(
                    title: Text(task[index]['name']),
                    subtitle: Text(task[index]['details']),
                    trailing: Wrap(
                      //mainAxisAlignment: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context, null),
        child: Icon(Icons.add),
      ),
    );
  }

  final TextEditingController name_controller = TextEditingController();
  final TextEditingController details_controller = TextEditingController();

  void showForm(BuildContext context, int? id) async {
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
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task Name"),
                ),
                TextField(
                  controller: details_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task Details"),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        createTask({
                          'name': name_controller.text,
                          'details': details_controller.text
                        });
                      }
                      // if(id != null){
                      //   updateTask(id,{'name':name_controller.text,'details':details_controller.text});
                      // }
                      name_controller.text = "";
                      details_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? "create Task " : "update task"))
              ],
            ),
          );
        });
  }
}
