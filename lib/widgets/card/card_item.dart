import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String name;
  final double balance;
  const CardItem({this.name, this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffaeb3ef),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xfff2f4fc),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Text(
                  "* * * *  * * * *  * * * *  56 98",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffaeb3ef),
                      fontWeight: FontWeight.w600),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffaeb3ef),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$ $balance",
                      style: TextStyle(
                        fontSize: 34,
                        color: Color(0xfff2f4fc),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              "VISA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xfff2f4fc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
