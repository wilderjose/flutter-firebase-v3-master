import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 40.0,
          bottom: 15.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 8),
                    Text("Hola, Sara"),
                  ],
                ),
                FilledButton(onPressed: () {}, child: Text("Menu")),
              ],
            ),
            SizedBox(height: 20),
            Card(
              color: const Color(0xFFE65585),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Paris'), Icon(Icons.location_on)],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Paris",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      bottom: 30.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 5,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: NetworkImage(
                                  'https://us.123rf.com/450wm/dstaerk/dstaerk1502/dstaerk150201154/36865379-lector-de-libros-electr%C3%B3nicos-con-los-libros.jpg?ver=6',
                                ),
                              ),
                            ),
                            Positioned(
                              left: 25,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyHR4gpqSzBHqB9f-CGb3ml0reYLYn_RXU6A&s',
                                ),
                              ),
                            ),
                            Positioned(
                              left: 50,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyHR4gpqSzBHqB9f-CGb3ml0reYLYn_RXU6A&s',
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Positioned(
                              left: 75,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbUW304CTQvXWRqMU_sO2nMzaHhaR0mtdORA&s',
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Positioned(
                              left: 100,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD6E_H3B4Yp95TjRCUV2XOXpdhLBZf-Zg-KA&s',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0,

                          child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              iconColor: Colors.white,
                              foregroundColor: Colors.yellow,

                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                            onPressed: () {},
                            label: Text(
                              "Buy more tickets",
                              style: TextStyle(color: Colors.white),
                            ),
                            icon: Icon(Icons.arrow_forward),
                            iconAlignment: IconAlignment.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(child: Text('Palace of Versailles')),
            Card(child: Text("Museo de l'Orangerie")),
          ],
        ),
      ),
    );
  }
}
