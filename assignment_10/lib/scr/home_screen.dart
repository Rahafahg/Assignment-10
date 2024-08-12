import 'package:assignment_10/scr/CostemWidget/coustem_card.dart';
import 'package:assignment_10/scr/CostemWidget/icon_lebal.dart';
import 'package:assignment_10/scr/CostemWidget/text_column.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 239, 239),
        body: SafeArea(
          child: SingleChildScrollView(
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
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconWithLebal(
                        lebal: "Wallet",
                        iconName: Icon(Icons.currency_exchange_rounded)),
                    IconWithLebal(
                        lebal: "Delivery", iconName: Icon(Icons.card_giftcard)),
                    IconWithLebal(
                        lebal: "Massage", iconName: Icon(Icons.message)),
                    IconWithLebal(
                        lebal: "Service", iconName: Icon(Icons.room_service))
                  ],
                ),
                const CoustemCard(
                    title: "Adress",
                    subtitle: "Ensure your harvesting adress",
                    iconName: Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    iconColor: Color.fromARGB(255, 135, 117, 219)),
                const CoustemCard(
                    title: "Privacy",
                    subtitle: "System permission change",
                    iconName: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    iconColor: Color.fromARGB(255, 233, 104, 172)),
                const CoustemCard(
                    title: "General",
                    subtitle: "Basic functional setting",
                    iconName: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    iconColor: Color.fromARGB(255, 244, 191, 80)),
                const CoustemCard(
                    title: "Notifications",
                    subtitle: "Take over the news in time",
                    iconName: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    iconColor: Color.fromARGB(255, 95, 191, 195)),
                const CoustemCard(
                    title: "Support",
                    subtitle: "We are here to help",
                    iconName: Icon(
                      Icons.comment,
                      color: Colors.white,
                    ),
                    iconColor: Colors.grey)
              ],
            ),
          ),
        ));
  }
}
