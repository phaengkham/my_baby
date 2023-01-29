import 'package:flutter/material.dart';

class myBaBY extends StatelessWidget {
  const myBaBY({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BabyShop",
      home: Scaffold(
        appBar: AppBar(
          title: Text("BaBy Application"),
          centerTitle: true,
          actions: [Icon(Icons.other_houses)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hello BaBy",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              Text(
                "BaBy Application",
                style: TextStyle(fontSize: 30, color: Colors.green),
              )
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
