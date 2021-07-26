import 'package:flutter/material.dart';

class IconButtoned extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icons;
  const IconButtoned({this.color, this.icons, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 72.0,
            height: 72.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Icon(
              icons,
              color: color,
              size: 32.0,
            ),
          ),
          Divider(
            height: 10.0,
          ),
          Text(
            label,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
