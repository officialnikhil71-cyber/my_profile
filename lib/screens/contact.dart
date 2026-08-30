import 'package:flutter/material.dart';
import '../code_models/textmodels.dart';
import '../code_widgets/linkButtons.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 52, 52),
        title: Text(
          'CONTACT',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),

                    child: Image.asset(
                      'assets/images/iimage2.jpg',
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 2),
                  Textmodels(note: 'Lets Work Together!', sx: 20),
                  SizedBox(height: 5),
                  Textmodels(
                    note:
                        'feel free to reach out to me through any of the platforms',
                    sx: 14,
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 88, 31, 31),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    minVerticalPadding: 2,
                    visualDensity: VisualDensity(vertical: -3),
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text('Email'),
                    subtitle: Text('officialnikhil71@gmail.com'),
                  ),
                  Divider(height: 1, color: Colors.black),
                  ListTile(
                    minVerticalPadding: 2,
                    visualDensity: VisualDensity(vertical: -3),
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text('Location'),
                    subtitle: Text('Baraut (Baghpat)'),
                  ),
                  Divider(height: 1, color: Colors.black),
                  ListTile(
                    minVerticalPadding: 2,
                    visualDensity: VisualDensity(vertical: -3),
                    leading: Icon(Icons.phone, color: Colors.blue, size: 25),
                    title: Text('Mobile'),
                    subtitle: Text('6397831173'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Textmodels(note: 'CONNECT WITH ME', sx: 19),
            SizedBox(height: 10),
            Linkbuttons(),
          ],
        ),
      ),
    );
  }
}
