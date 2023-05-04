import 'package:flutter/material.dart';

class registered extends StatelessWidget {
  final data;
  const registered({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = data[0]['name'];
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Welcome $name"),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Image.network(
                'https://images.unsplash.com/photo-1543002588-bfa74002ed7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text('Successfully Registered...',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
        ]));
  }
}
