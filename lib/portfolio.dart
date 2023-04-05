import 'package:flutter/material.dart';
import 'package:portfolio/components/about.dart';
import 'package:portfolio/components/education.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/components/skills.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;
  final skillsKey = GlobalKey();

  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: const Text('Education')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillsKey.currentContext!);
            },
            child: const Text('Skills')),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Adnan Asghar"),
        actions: isMobile ? null : navItems,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  About(),
                  Education(),
                ],
              ),
              Skills(
                key: skillsKey,
              ),
              Footer(),
            ],
          ),
        ),
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(children: navItems),
            )
          : null,
    );
  }
}
