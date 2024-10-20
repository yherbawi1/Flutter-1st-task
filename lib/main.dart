import 'package:flutter/material.dart';
import 'package:task1/modules/custom_card.dart';
import 'package:task1/modules/icon_text_column.dart';
import 'package:task1/modules/profile_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Center',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 12.0,
                ),
                ProfileCard(
                    name: 'Mausam Rayamajhi',
                    jobTitle: 'A trendsetter',
                    imageUri: 'assets/images/1.png',
                    collects: 846,
                    attentions: 51,
                    tracks: 267,
                    coupons: 39),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconTextColumn(
                          icon: Icons.account_balance_wallet, text: 'Wallet'),
                      IconTextColumn(
                          icon: Icons.local_shipping, text: 'Delivery'),
                      IconTextColumn(icon: Icons.message, text: 'Message', number: 2),
                      IconTextColumn(
                          icon: Icons.monetization_on, text: 'Service'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Column(
                  children: [
                    CustomCard(
                        title: 'Address',
                        subtitle: 'Ensure your harvesting address',
                        icon: Icons.place,
                        iconBackgroundColor: Color(0xFF8d7aee)),
                    SizedBox(
                      height: 16.0,
                    ),
                    CustomCard(
                        title: 'Privacy',
                        subtitle: 'System permission change',
                        icon: Icons.lock,
                        iconBackgroundColor: Color(0xFFf368b7)),
                    SizedBox(
                      height: 16.0,
                    ),
                    CustomCard(
                        title: 'General',
                        subtitle: 'Basic funcaional settings',
                        icon: Icons.layers,
                        iconBackgroundColor: Color(0xFFfec85b)),
                    SizedBox(
                      height: 16.0,
                    ),
                    CustomCard(
                        title: 'Notification',
                        subtitle: 'Take over the news in time',
                        icon: Icons.notifications,
                        iconBackgroundColor: Color(0xFF5ed1d4)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
