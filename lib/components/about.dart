import 'package:flutter/material.dart';
import 'package:portfolio/utils/animated_contact.dart';
import 'package:portfolio/utils/social_row.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/dev.png',
                height: 156.0,
              ),
              Text(
                "Adnan Asghar",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "I am an iOS developer and I am learning Flutter",
                  textAlign: TextAlign.center,
                ),
              ),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: const [
                  Chip(
                    label: Text('iOS Developer'),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 12.0),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text(
                      'Flutter Developer',
                    ),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 12.0),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text('Backend Developer'),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 12.0),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              Divider(),
              AnimatedContact(
                  iconData: FontAwesomeIcons.linkedin,
                  title: "LinkedIn",
                  subtitle: 'Software Engineer',
                  onTap: () {}),
              AnimatedContact(
                  iconData: FontAwesomeIcons.github,
                  title: "Github",
                  subtitle: 'adnan_asghar18',
                  onTap: () {}),
              AnimatedContact(
                  iconData: FontAwesomeIcons.twitter,
                  title: "Twitter",
                  subtitle: '@adnanasghar',
                  onTap: () {}),
            ],
          ),
          Column(
            children: [
              Divider(),
              SocialRow(),
            ],
          ),
        ],
      ),
    );
  }
}
