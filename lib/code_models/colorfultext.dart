import 'package:flutter/material.dart';

class Colorfultext extends StatelessWidget {
  final Color color;
  final String note;
  final double sx;
  final FontWeight gt;

  const Colorfultext({
    super.key,
    required this.color,
    required this.note,
    required this.sx,
    required this.gt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      note,
      style: TextStyle(
        color: color,
        fontSize: sx,
        fontWeight: gt,
      ),
    );
  }
}
