import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "User settings",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[16],
                  color: Color.fromARGB(255, 55, 111, 246),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.network(
                            "https://i.pinimg.com/originals/57/00/c0/5700c04197ee9a4372a35ef16eb78f4e.png",
                            scale: 20,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rein Gundersen Bentdal",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              "Creattive builder",
                              style: TextStyle(color: Colors.white30),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextColumn(mainTitle: "846", subTitle: "Collect"),
                      TextColumn(mainTitle: "51", subTitle: "Attention"),
                      TextColumn(mainTitle: "267", subTitle: "Track"),
                      TextColumn(mainTitle: "39", subTitle: "Coupons")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

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
