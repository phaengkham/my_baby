import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class moneyBox extends StatelessWidget {
  late String title;
  late double amount;
  late Color color;
  late double size;

  moneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            height: size,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Text(
                    '${NumberFormat("#,###.##").format(amount)}' + " " + "ກີບ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
