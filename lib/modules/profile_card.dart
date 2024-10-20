import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String jobTitle;
  final String imageUri;
  final int collects;
  final int attentions;
  final int tracks;
  final int coupons;

  const ProfileCard({
    super.key,
    required this.name,
    required this.jobTitle,
    required this.imageUri,
    required this.collects,
    required this.attentions,
    required this.tracks,
    required this.coupons,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      shadowColor: Colors.black.withOpacity(0.8),
      color: const Color(0xFF3775FC),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(100.0),
                  ),
                  child: Image(
                    image: AssetImage(imageUri),
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.border_color,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),
                    Text(
                      jobTitle,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      collects.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Collect',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      attentions.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Attention',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      tracks.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Track',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      coupons.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Coupons',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
