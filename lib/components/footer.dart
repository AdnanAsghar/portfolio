import 'package:flutter/material.dart';
import 'package:portfolio/utils/social_row.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: const [
          SocialRow(),
          SizedBox(
            height: 10,
          ),
          Text('Adnan Asghar'),
        ],
      ),
    );
  }
}
