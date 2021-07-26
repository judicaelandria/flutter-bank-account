import 'package:flutter/material.dart';

import 'avatar.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "Wallet",
        style: TextStyle(
          fontSize: 24,
          color: Color(0xff212040),
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 2.0, bottom: 2.0),
          child: Avatar("assets/images/michael.jpg"),
        ),
      ],
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
