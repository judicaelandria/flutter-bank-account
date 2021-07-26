import 'package:finance/model/user.dart';
import 'package:flutter/material.dart';

import 'card_item.dart';

class MoneyCard extends StatelessWidget {
  final User user;
  const MoneyCard({this.user});

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return Container(
      height: 248.0,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(right: 15.0, left: 15.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                _selectedIndex = index;
                return Container(
                  height: 228.0,
                  width: MediaQuery.of(context).size.width / 1.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(user.data[index].firstColor.value),
                        Color(user.data[index].secondColor.value),
                      ],
                    ),
                  ),
                  child: CardItem(
                      name: user.data[index].name,
                      balance: user.data[index].balance),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 20.0),
              itemCount: user.data.length,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: user.data.asMap().entries.map((e) {
                return Container(
                  width: _selectedIndex == e.key ? 22 : 12,
                  height: 5,
                  margin: e.key > 0
                      ? EdgeInsets.only(left: 4.0)
                      : EdgeInsets.only(left: 0),
                  decoration: BoxDecoration(
                    color: _selectedIndex == e.key
                        ? Color(0xff2118ce)
                        : Color(0xffaeb3ef),
                    borderRadius: BorderRadius.circular(6),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
