import 'package:flutter/material.dart';
import '../code_models/overviewINFO.dart';

class Giveoverview extends StatelessWidget {
  const Giveoverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(255, 254, 253, 249),
      ),
      padding: EdgeInsets.only(top: 8, left: 10, right: 10),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.grid_view_outlined,
              color: Colors.redAccent,
            ),
            title: Text('OVERVIEW'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Overviewinfo(
                icon: Icons.menu_book_outlined,
                tital: 'LEARNING',
              ),
              Overviewinfo(
                icon: Icons.track_changes_outlined,
                tital: 'BUILD',
              ),
              Overviewinfo(
                icon: Icons.code_outlined,
                tital: 'FOCUS',
              ),
              Overviewinfo(
                icon: Icons.flag_outlined,
                tital: 'GOAL',
              ),
            ],
          )
        ],
      ),
    );
  }
}
