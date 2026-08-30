import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String para;

  const Paragraph({super.key, required this.para});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: Text(para, style: TextStyle(color: Colors.black)),
    );
  }
}
