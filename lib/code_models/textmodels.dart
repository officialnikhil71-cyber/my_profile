import 'package:flutter/material.dart';

class Textmodels extends StatelessWidget {
  final String note;
  final double sx;

  const Textmodels({super.key, required this.note, required this.sx});

  @override
  Widget build(BuildContext context) {
    return Text(
      note,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: sx,
      ),
    );
  }
}
