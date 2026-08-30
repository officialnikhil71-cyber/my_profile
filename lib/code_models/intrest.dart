import 'package:flutter/material.dart';

class Intrest extends StatelessWidget {
  const Intrest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.gamepad_outlined, color: Colors.redAccent, size: 40),
          Icon(Icons.code_off_outlined, color: Colors.pinkAccent, size: 40),
          Icon(Icons.music_note_outlined, color: Colors.redAccent, size: 40),
          Icon(Icons.travel_explore_rounded, color: Colors.redAccent, size: 40),
        ],
      ),
    );
  }
}
