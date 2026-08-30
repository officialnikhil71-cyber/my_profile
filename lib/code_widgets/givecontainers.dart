import 'package:flutter/material.dart';

class MakeContainer extends StatelessWidget {
  final Widget child;

  const MakeContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(143, 255, 248, 233),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color.fromARGB(255, 230, 230, 230)),
      ),
      child: child,
    );
  }
}
