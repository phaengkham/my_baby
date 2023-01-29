import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_baby/moneyBox.dart';

class columnWidget extends StatefulWidget {
  const columnWidget({super.key});

  @override
  State<columnWidget> createState() => _columnWidgetState();
}

class _columnWidgetState extends State<columnWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ບັນຊີຂອງຕົວເອງ"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              moneyBox("ຍອດເງິນທີ່ມີ", 300000, Colors.green, 140),
              moneyBox("ຍອດເງິນທີ່ຕ້ອງຈ່າຍ", 200000, Colors.pink, 120),
              moneyBox("ຍອດເງິນທີ່ຕ້ອງເກັບຄື່ນ", 200000, Colors.blue, 120),
              moneyBox("ຍອດເງິນທີ່ເສຍໄປແລ້ວ", 100000, Colors.greenAccent, 100),
            ],
          ),
        ),
      ),
    );
  }

  showRow() {
    Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),
          height: 120,
          width: 120,
        ),
        SizedBox(width: 8.0),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(12)),
          height: 120,
          width: 120,
        ),
      ],
    );
  }
}
