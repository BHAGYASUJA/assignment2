import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Exapansion(),));
}

class Exapansion extends StatefulWidget {
  const Exapansion({Key? key}) : super(key: key);

  @override
  State<Exapansion> createState() => _ExapansionState();
}

class _ExapansionState extends State<Exapansion> {
  final GlobalKey<ExpansionTileCardState> card1 =GlobalKey();
  final GlobalKey<ExpansionTileCardState> card2 =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Card"),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
          child:ExpansionTileCard(
            key:card1,
            title: Text("Tap Me! ! !"),
            leading: CircleAvatar(child: Text("C1"),),
            subtitle: Text("Tap To Expand"),
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.pink,),title: Text("Pink Click"),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),title: Text("Green Click"),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.yellowAccent,),title: Text("Yellow Click"),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.orangeAccent,),title: Text("Orange Click"),)
            ],
          ),),

          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
            child:ExpansionTileCard(
              key:card2,
              title: Text("Tap Me! ! !"),
              leading: CircleAvatar(child: Text("C2"),),
              subtitle: Text("Tap To Expand"),
              children: [
                ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text("red Click"),),
                ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),title: Text("green Click"),),
                ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),title: Text("blue Click"),),
                ListTile(leading: CircleAvatar(backgroundColor: Colors.orangeAccent,),title: Text("orange Click"),)
              ],
            ),)
        ],
      ),
    );
  }
}
