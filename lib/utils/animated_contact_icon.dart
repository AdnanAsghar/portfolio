import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContactIcon extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;

  const AnimatedContactIcon({
    super.key,
    required this.iconData,
    required this.onTap,
  });

  @override
  State<AnimatedContactIcon> createState() => _AnimatedContactIconState();
}

class _AnimatedContactIconState extends State<AnimatedContactIcon> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: isHovering ? Colors.grey.shade900 : Colors.white,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FaIcon(
                      widget.iconData,
                      size: 28.0,
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
