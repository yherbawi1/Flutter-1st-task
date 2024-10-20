import 'package:flutter/material.dart';

class IconTextColumn extends StatelessWidget {
  final IconData icon;
  final String text;
  final int? number;

  const IconTextColumn({
    super.key,
    required this.icon,
    required this.text,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius:
                    BorderRadius.circular(100.0),
              ),
              child: Icon(
                icon,
                color: const Color(0xFF1f1f1f),
                size: 26,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Color(0xFF1f1f1f),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        if (number != null)
          Positioned(
            right: -1.0,
            top: -1.0,
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: Color(0xFF3271fc),
                shape:
                    BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
