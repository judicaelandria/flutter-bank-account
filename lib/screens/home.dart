import 'package:finance/model/user.dart';
import 'package:finance/widgets/app_bar.dart';
import 'package:finance/widgets/card/budget_card.dart';
import 'package:finance/widgets/card/card.dart';
import 'package:finance/widgets/icon_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final User user = User(data: [
    Data.fromJson({
      'name': 'Lorem ipsum',
      'balance': 12000.02,
      'firstColor': 0xff706ae6,
      'secondColor': 0xff2118ce
    }),
    Data.fromJson({
      'name': 'John Doe',
      'balance': 5697.65,
      'firstColor': 0xff6dd5ed,
      'secondColor': 0xff2193b0
    }),
    Data.fromJson({
      'name': 'Michael Doe',
      'balance': 8965.56,
      'firstColor': 0xff99f2c8,
      'secondColor': 0xff1f4037
    })
  ]);
  final List<Map<String, dynamic>> features = [
    {'color': Colors.orange.shade900, 'label': 'Send', 'icon': Icons.umbrella},
    {
      'color': Colors.green.shade700,
      'label': 'Receive',
      'icon': Icons.umbrella
    },
    {'color': Colors.blue.shade600, 'label': 'Top Up', 'icon': Icons.radio},
    {
      'color': Colors.purple.shade600,
      'label': 'Bill Pay',
      'icon': Icons.account_balance_wallet
    },
  ];
  Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Appbar(),
      body: Container(
        height: size.height,
        width: size.width,
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            MoneyCard(user: widget.user),
            BudgetCard(),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Features",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff212040),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff2118ce),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: widget.features.asMap().entries.map((e) {
                        return IconButtoned(
                          color: e.value["color"],
                          label: e.value['label'],
                          icons: e.value['icon'],
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
