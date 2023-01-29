import 'package:flutter/material.dart';
import 'package:my_baby/menuClass.dart';

class menuFood extends StatefulWidget {
  const menuFood({super.key});

  @override
  State<menuFood> createState() => _menuFoodState();
}

class _menuFoodState extends State<menuFood> {
  List<listMenu> menu = [
    listMenu("ຊີ້ນໝູ", "70.000 ກີບ", "assets/images/food1.jpg"),
    listMenu("ຊີ້ນໄກ່", "55.000 ກີບ", "assets/images/food2.jpg"),
    listMenu("ຊີ້ນສັດປ່າ", "120.000 ກີບ", "assets/images/food3.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              tooltip: 'Search',
            )
          ],
          title: Text("BABYSHOP"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            listMenu lm = menu[index];
            return ListTile(
              leading: Image.asset(
                lm.image,
                width: 80,
                height: 60,
              ),
              title: Text(
                "ລາຍການ: " + lm.name,
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              subtitle: Text(
                "ລາຄາ: " + lm.price,
                style: TextStyle(fontSize: 14, color: Colors.pink),
              ),
              onTap: () {
                print("ເຈົ້າເລືອກອາຫານປະເພດ: " + lm.name);
              },
            );
          },
        ),
      ),
    );
  }
}
