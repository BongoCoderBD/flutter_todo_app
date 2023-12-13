import 'package:flutter/material.dart';

import '../Styles/styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenUI();
  }
}

class HomeScreenUI extends State<HomeScreen> {
  List ToDoList = ["Upananda"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(flex: 70,child: TextFormField(decoration: AppInputStyle("Add to list item"),)),
                    Expanded(flex: 30,child: Padding(padding: EdgeInsets.only(left: 5),child: ElevatedButton(style: AppButtonStyle() ,onPressed: () { }, child: Text("Add"),),)),
                  ],
                )),
            Expanded(flex: 90, child: ListView.builder(
              itemCount: ToDoList.length,
                itemBuilder: (context, index){
                return Card(
                  child: sizedBox50(
                    Row(
                      children: [
                        Expanded(flex: 80,child: Text("Item")),
                        Expanded(flex: 20,child: TextButton(onPressed: () { }, child: Icon(Icons.delete),)),
                      ],
                    )
                  ),
                );
                })),
          ]
        ),
      ),
    );
  }
}
