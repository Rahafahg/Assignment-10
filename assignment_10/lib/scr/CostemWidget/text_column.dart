import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  const TextColumn(
      {super.key, required this.mainTitle, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            mainTitle,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            subTitle,
            style: const TextStyle(color: Colors.white30),
          )
        ],
      ),
    );
  }
}
