import 'package:flutter/material.dart';

class Overviewinfo extends StatelessWidget {
  final IconData icon;
  final String tital;
  // final String discript;

  const Overviewinfo({
    super.key,
    required this.icon,
    required this.tital,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.redAccent,
          size: 24,
        ),
        SizedBox(height: 5),
        Text(
          tital,
          style:
              TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
