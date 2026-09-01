import 'package:flutter/material.dart';
import '../code_models/paragraph.dart';
import '../code_models/textmodels.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 248, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 33, 33),
        title: const Text(
          'PROJECT',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Textmodels(note: '''THINGs   I'M  WORKING  ON''', sx: 18),
            const Divider(
              height: 30,
              color: Colors.red,
            ),
            Card(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/protfo.png',
                      width: 130,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Textmodels(note: '      Porffolio App', sx: 19),
                          Paragraph(
                              para:
                                  '''A personal portfolio app to showcase my skills,projects and experience.'''),
                          Textmodels(
                            note: '     FLUTTER     DART',
                            sx: 16,
                          ),
                          Divider(
                            height: 10,
                            color: Colors.white,
                          ),
                          Textmodels(
                            note: '      IN PROGRESS',
                            sx: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Card(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/music.png',
                      width: 130,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Textmodels(note: '     Music Player', sx: 19),
                          Paragraph(
                              para:
                                  '''A simple music player app with clean UI and smooth experience.'''),
                          Textmodels(note: '     FLUTTER   DART', sx: 16),
                          Divider(
                            height: 10,
                            color: Colors.white,
                          ),
                          Textmodels(note: '      PLANNED', sx: 14),
                        ],
                      ),
                    ),
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
