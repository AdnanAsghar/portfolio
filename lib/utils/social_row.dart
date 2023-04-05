import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animated_contact_icon.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContactIcon(iconData: FontAwesomeIcons.facebook, onTap: () {}),
        SizedBox(
          width: 8.0,
        ),
        AnimatedContactIcon(iconData: FontAwesomeIcons.twitter, onTap: () {}),
        SizedBox(
          width: 8.0,
        ),
        AnimatedContactIcon(iconData: FontAwesomeIcons.linkedin, onTap: () {}),
      ],
    );
  }
}
