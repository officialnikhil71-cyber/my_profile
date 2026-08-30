import 'package:flutter/material.dart';
import '../code_widgets/givecontainers.dart';
import '../code_models/textmodels.dart';
import '../code_models/paragraph.dart';
import '../code_models/intrest.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.amberAccent),
        backgroundColor: Colors.black,
        title: Text(
          'ABOUT ME',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: ListView(
          children: [
            MakeContainer(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.person, color: Colors.blue, size: 28),
                      title: Textmodels(note: 'Introduction', sx: 16),
                    ),
                    Paragraph(
                      para:
                          'I am passionate Flutter developer who loves building clean, efficient and user friendly mobile apps. i enjoy turning ideas into real world products',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            MakeContainer(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.cast_for_education_rounded,
                        color: Colors.blue,
                        size: 28,
                      ),
                      title: Textmodels(note: 'Education', sx: 16),
                    ),
                    Paragraph(
                      para: ''' BTech in Computer Science 
AKTU UNIVERSITY,lucknow
2025-2029 batch | cgpa -8.25''',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            MakeContainer(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.hourglass_bottom_outlined,
                        color: Colors.blue,
                        size: 28,
                      ),
                      title: Textmodels(note: 'Journery', sx: 16),
                    ),
                    Paragraph(
                      para: ''' Started my coding journey in 2025.
 Since then, I am learning new skills,
 learned new technologies and improved
 my problem solving skills.''',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            MakeContainer(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.heart_broken_outlined,
                        color: Colors.pinkAccent,
                        size: 40,
                      ),
                      title: Text('INTERESTS'),
                    ),
                    Intrest(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            MakeContainer(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 10,
                  right: 40,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.track_changes,
                        color: Colors.blue,
                        size: 40,
                      ),
                      title: Text('Goals'),
                    ),
                    Paragraph(
                      para:
                          'To become a Software Engineer who builds impactful products and contributes to open source.',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
