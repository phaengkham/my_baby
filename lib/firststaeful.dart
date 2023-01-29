import 'package:flutter/material.dart';

class firststateful extends StatefulWidget {
  const firststateful({super.key});

  @override
  State<firststateful> createState() => _firststatefulState();
}

class _firststatefulState extends State<firststateful> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(
      Text(
        "learn flutter",
        style: TextStyle(fontSize: 30, color: Colors.green),
      ),
    );
    data.add(Text(
      "$number",
      style: TextStyle(fontSize: 40, color: Colors.pink),
    ));
    data.add(
      Text(
        "flutter",
        style: TextStyle(fontSize: 30, color: Colors.pink),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BaBy Application"),
          centerTitle: true,
          actions: [
            Icon(Icons.android),
          ],
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, children: data),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addNumber,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }

  List<Widget> getData(int count) {
    List<Widget> datas = [];
    for (var i = 0; i < count; i++) {
      datas.add(
        Text(
          "Menu:${i + 1}",
          style: TextStyle(fontSize: 30, color: Colors.pink),
        ),
      );
    }
    return datas;
  }
}
