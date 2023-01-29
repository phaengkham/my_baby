import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listBuilder extends StatefulWidget {
  const listBuilder({super.key});

  @override
  State<listBuilder> createState() => _listBuilderState();
}

class _listBuilderState extends State<listBuilder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListViewBuilder"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  "Menu: ${index + 1}",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
              );
            }),
      ),
    );
  }
}
