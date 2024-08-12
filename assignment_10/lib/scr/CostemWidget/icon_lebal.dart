import 'package:flutter/material.dart';

class IconWithLebal extends StatelessWidget {
  final String lebal;
  final Icon iconName;
  const IconWithLebal({super.key, required this.lebal, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 245, 245),
                      borderRadius: BorderRadius.circular(100)),
                  child: iconName),
              Text(lebal)
            ],
          )
        ],
      ),
    );
  }
}
