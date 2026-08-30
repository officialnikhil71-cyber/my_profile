import 'package:flutter/material.dart';
import '../code_models/textmodels.dart';
import '../code_widgets/simplecontainer.dart';

class Skillpage extends StatelessWidget {
  const Skillpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 30, 33),
        title: Text(
          'MY SKILL SET',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: [
            SizedBox(height: 18),
            Textmodels(
              note: 'Technologies I am learning  & working with',
              sx: 17,
            ),
            SizedBox(height: 25),
            SimpleContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.app_blocking_outlined,
                      color: Colors.green,
                      size: 35,
                    ),
                    title: Text('App Development'),
                  ),
                  Divider(height: 1, color: Colors.white),
                  ListTile(
                    leading: Icon(
                      Icons.donut_small_rounded,
                      color: Colors.black,
                      size: 15,
                    ),
                    title: Text('Flutter'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.donut_small_rounded,
                      color: Colors.black,
                      size: 15,
                    ),
                    title: Text('Dart'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            SimpleContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.laptop_chromebook_outlined,
                      color: Colors.green,
                      size: 35,
                    ),
                    title: Text('Programming'),
                  ),
                  Divider(height: 1, color: Colors.white),
                  ListTile(
                    leading: Icon(
                      Icons.donut_small_rounded,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      size: 15,
                    ),
                    title: Text('C'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.donut_small_rounded,
                      color: Colors.black,
                      size: 15,
                    ),
                    title: Text('C++'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.donut_small_rounded,
                      color: Colors.black,
                      size: 15,
                    ),
                    title: Text('Basic DSA'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            SimpleContainer(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.token_outlined,
                      color: const Color.fromARGB(255, 62, 194, 47),
                      size: 35,
                    ),
                    title: Text('TOOLS'),
                  ),
                  Divider(height: 1, color: Colors.white),
                  ListTile(
                    leading: Icon(
                      Icons.donut_small_rounded,
                      color: const Color.fromARGB(255, 5, 2, 1),
                      size: 15,
                    ),
                    title: Text('VS CODE'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.donut_small_rounded,
                      color: const Color.fromARGB(255, 5, 2, 1),
                      size: 15,
                    ),
                    title: Text('Git & Github'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
