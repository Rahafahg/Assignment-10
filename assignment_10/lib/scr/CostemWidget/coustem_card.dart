import 'package:flutter/material.dart';

class CoustemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon iconName;
  final Color iconColor;
  const CoustemCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.iconName,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: kElevationToShadow[2]),
        height: 90,
        width: 370,
        alignment: Alignment.center,
        child: ListTile(
          leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: iconColor, borderRadius: BorderRadius.circular(100)),
              child: iconName),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.black38),
          ),
        ),
      ),
    );
  }
}
