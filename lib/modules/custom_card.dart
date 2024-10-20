import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconBackgroundColor;

  const CustomCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.iconBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      shadowColor: const Color.fromARGB(255, 33, 96, 243).withOpacity(0.4),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: iconBackgroundColor,
                    borderRadius:
                        BorderRadius.circular(100.0),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black.withOpacity(0.6),
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
