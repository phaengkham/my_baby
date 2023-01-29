import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listViewdata extends StatefulWidget {
  const listViewdata({super.key});

  @override
  State<listViewdata> createState() => _listViewdataState();
}

class _listViewdataState extends State<listViewdata> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn ListView"),
          centerTitle: true,
          actions: [
            Icon(Icons.search),
          ],
        ),
        body: Center(
            child: ListView(
          children: getData(20),
        )),
      ),
    );
  }

  List<Widget> getdata(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(
        Text(
          "Menu: ${i + 1}",
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
      );
    }
    return data;
  }

  List<Widget> getData(int number) {
    List<Widget> datas = [];
    for (var j = 0; j < number; j++) {
      var menu = ListTile(
        title: Text(
          "Menu: ${j + 1}",
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        subtitle: Text(
          "The Title: ${j + 1} ",
          style: TextStyle(fontSize: 20, color: Colors.pink),
        ),
      );
      datas.add(menu);
    }
    return datas;
  }
}
