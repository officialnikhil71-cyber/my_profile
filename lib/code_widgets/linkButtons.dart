import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

class Linkbuttons extends StatelessWidget {
  const Linkbuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            iconSize: 35,
            icon: const FaIcon(FontAwesomeIcons.github, color: Colors.black),
            onPressed: () async {
              // final Uri url = Uri.parse('https://github.com/cybern');
              // if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
              //   throw Exception('could not launch url');
              // }
            },
          ),
          IconButton(
            iconSize: 35,
            icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.black),
            onPressed: () {
              // launchUrl(Uri.parse('https://www.linkedin.com/in/xyz'));
            },
          ),
          IconButton(
            iconSize: 35,
            icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 35,
            icon: FaIcon(FontAwesomeIcons.telegram, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
