import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color color;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  double contOpacity = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
            // color: Colors.black,
            ),
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (a) {
          setState(() {
            contOpacity = 1;
          });
        },
        onExit: (a) {
          setState(() {
            contOpacity = 0;
          });
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: FaIcon(
                widget.icon,
                color: Colors.blue,
                size: 45,
              ),
            ),
            AnimatedOpacity(
              opacity: contOpacity,
              duration: const Duration(milliseconds: 400),
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 80,
                decoration: BoxDecoration(color: widget.color),
                child: Text(
                  widget.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
