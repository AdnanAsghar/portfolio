import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    const languages = ['Dart', 'Swift'];
    const tools = ['VSCode', 'XCode'];
    const frameworks = ['Velocity_X', 'Geometry'];

    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: const Text(
            'Skills',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          decoration: BoxDecoration(color: Colors.white),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : (context.screenWidth * 0.8) / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Languages',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w200),
              ),
              Divider(),
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  for (var item in languages)
                    Chip(
                      label: Text(item),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : (context.screenWidth * 0.8) / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Frameworks',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w200),
              ),
              Divider(),
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  for (var item in frameworks)
                    Chip(
                      label: Text(item),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          decoration: BoxDecoration(color: Colors.white),
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : (context.screenWidth * 0.8) / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tools',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w200),
              ),
              Divider(),
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  for (var item in tools)
                    Chip(
                      label: Text(item),
                      labelStyle: TextStyle(
                        color: Colors.indigo,
                      ),
                      side: BorderSide(
                        color: Colors.indigo,
                      ),
                      backgroundColor: Colors.white,
                    ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
