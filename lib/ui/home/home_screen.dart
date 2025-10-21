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
            // ==== Header ====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/originals/43/25/56/432556c2d4ed146d9f8c03d8e2793b22.jpg',
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Hola, Saa",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                FilledButton(onPressed: () {}, child: const Text("Menu")),
              ],
            ),

            const SizedBox(height: 20),

            // ==== Card principal ====
            Card(
              color: const Color(0xFFE65585),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Paris',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(Icons.location_on, color: Colors.white),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Paris",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // ==== Avatares + Botón ====
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
                        // Avatares con separación
                        SizedBox(
                          height: 70,
                          child: Row(
                            children: [
                              Positioned(
                                left: 0,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: NetworkImage(
                                    'https://us.123rf.com/450wm/dstaerk/dstaerk1502/dstaerk150201154/36865379-lector-de-libros-electr%C3%B3nicos-con-los-libros.jpg?ver=6',
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Positioned(
                                left: 25,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIfY4UL0PfeG87QvliaBXv529wFPaKCS6NCQ&s',
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Positioned(
                                left: 50,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIfY4UL0PfeG87QvliaBXv529wFPaKCS6NCQ&s',
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
                        ),

                        // Botón
                        SizedBox(
                          height: 40,
                          child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: const BorderSide(color: Colors.white),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                            label: const Text("Buy more tickets"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // ==== Otras tarjetas ====
            const Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Palace of Versailles'),
              ),
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Museo de l'Orangerie"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
