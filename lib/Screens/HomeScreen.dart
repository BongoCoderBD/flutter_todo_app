import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenUI();
  }
}

class HomeScreenUI extends State<HomeScreen> {
  List ToDoList = [];

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
                    Expanded(child: TextFormField()),
                    Expanded(child: ElevatedButton(onPressed: () { }, child: Text("Add"),)),
                  ],
                )),
            Expanded(flex: 90, child: ListView.builder(
              itemCount: ToDoList.length,
                itemBuilder: (context, index){
                return Card(
                  child: Text("List"),
                );
                })),
          ]
        ),
      ),
    );
  }
}
