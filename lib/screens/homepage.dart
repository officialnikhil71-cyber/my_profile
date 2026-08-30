import 'package:flutter/material.dart';
import '../code_widgets/simplecontainer.dart';
import '../code_models/textmodels.dart';
import '../code_widgets/linkButtons.dart';
import '../code_widgets/givecontainers.dart';
import '../screens/aboutme.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          "MY PORTFOLIO",
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 16, right: 16),
        child: ListView(
          children: [
            MakeContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/image1.jpg',
                      height: 140,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello, I am',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'NIKHIL KUMAR',
                          style: TextStyle(
                            color: Color.fromARGB(255, 121, 85, 72),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Passionate Flutter Developer building beautiful, functional, and user-friendly mobile applications.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 130, 120, 125),
                            fontWeight: FontWeight.normal,
                            fontSize: 12.5,
                            height: 1.35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Textmodels(note: 'OVERVIEW', sx: 20),
            const SizedBox(height: 15),

            SimpleContainer(
              child: Align(
                // alignment: AlignmentGeometry.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Textmodels(note: 'QUALIFICATION ', sx: 18),
                    Textmodels(note: 'senior scondary passout', sx: 14),
                    const SizedBox(height: 8),
                    Divider(height: 4, color: Colors.white),
                    const SizedBox(height: 5),
                    Textmodels(note: 'EXPERIENCE ', sx: 18),
                    Textmodels(note: 'Known Basics of programming', sx: 14),
                    Divider(height: 4, color: Colors.white),
                    const SizedBox(height: 5),
                    Textmodels(note: 'PROJECTS ', sx: 18),
                    Textmodels(note: 'Working..', sx: 14),
                    Divider(height: 4, color: Colors.white),
                    const SizedBox(height: 5),
                    Textmodels(note: 'CURRENT STATUS ', sx: 18),
                    Textmodels(note: 'Btech 3rd Semester', sx: 14),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            ListTile(
              title: Text('ABOUT ME'),
              subtitle: Text('you can get more information '),
              trailing: IconButton(
                iconSize: 40,
                icon: Icon(Icons.chevron_right_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Aboutme()),
                  );
                },
                color: Colors.greenAccent,
              ),
            ),
            const SizedBox(height: 40),
            const Linkbuttons(),
          ],
        ),
      ),
    );
  }
}
