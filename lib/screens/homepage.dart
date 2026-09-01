import 'package:flutter/material.dart';
import '../code_models/colorfultext.dart';
import '../code_models/textmodels.dart';
import '../screens/aboutme.dart';
import '../code_widgets/giveOVERVIEW.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 254, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 254, 252),
        title: Textmodels(note: 'MY PORTFOLIO', sx: 22),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 20, right: 15, left: 15),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Colorfultext(
                              color: Colors.brown,
                              note: '''Hello I'm''',
                              sx: 15,
                              gt: FontWeight.w400),
                          SizedBox(height: 10),
                          Textmodels(note: 'NIKHIL KUMAR', sx: 26),
                          SizedBox(height: 10),
                          Textmodels(note: 'Flutter Developer', sx: 16),
                          SizedBox(height: 20),
                          Textmodels(
                              note:
                                  '''I build clean, efficient and user-friendly mobile applicatons.''',
                              sx: 13),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 232, 230, 230),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('assets/images/image1.jpg',
                            width: 150, height: 150, fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.only(right: 240),
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.redAccent,
              ),
              child: Center(
                child: Text(
                  'ExPlore PortFolio ->',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 8,
              ),
              child: const Text(
                "Why Flutter?\n"
                "I enjoy using Flutter to build beautiful, fast and "
                "cross-platform mobile applications while continuously "
                "learning and experimenting with new ideas.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF806A5B),
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 10),
            Giveoverview(),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.redAccent)),
              child: ListTile(
                leading: Icon(
                  Icons.person_2_outlined,
                  color: Colors.redAccent,
                  size: 28,
                ),
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
            ),
          ],
        ),
      ),
    );
  }
}
