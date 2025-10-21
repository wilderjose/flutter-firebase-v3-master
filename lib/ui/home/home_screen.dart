import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(),
        title: Text('Hey, Sara'),
        actions: [FilledButton(onPressed: () {}, child: Text('Menu'))],
      ),
      body: Column(
        children: [
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
                Text(
                  "Paris",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Avatar 1
                        Positioned(
                          left: 0,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              'https://us.123rf.com/450wm/dstaerk/dstaerk1502/dstaerk150201154/36865379-lector-de-libros-electr%C3%B3nicos-con-los-libros.jpg?ver=6',
                            ),
                          ),
                        ),
                        // Avatar 2
                        Positioned(
                          left: 25,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyHR4gpqSzBHqB9f-CGb3ml0reYLYn_RXU6A&s',
                            ),
                          ),
                        ),
                        // Avatar 3
                        Positioned(
                          left: 50,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIfY4UL0PfeG87QvliaBXv529wFPaKCS6NCQ&s',
                            ),
                          ),
                        ),
                        // Círculo con contador
                        Positioned(
                          left: 75,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey[800],
                            child: Text(
                              '+2,938',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(child: Text('Palace of Versailles')),
          Card(child: Text("Museo de l'Orangerie")),
        ],
      ),
    );
  }
}
