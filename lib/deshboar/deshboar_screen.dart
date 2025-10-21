import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/home/home_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://us.123rf.com/450wm/dstaerk/dstaerk1502/dstaerk150201154/36865379-lector-de-libros-electr%C3%B3nicos-con-los-libros.jpg?ver=6',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(child: BgColor()),

          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'ArtCrawl',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: double.infinity),
                Text(
                  'Your gateway to Art and Culture. Explore, Discover, Enjoy',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      iconColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 24),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => HomeScreen()),
                      );
                    },
                    label: Text(
                      'Buy more tickets',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(Icons.arrow_right_alt),
                    iconAlignment: IconAlignment.end,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Bg extends StatelessWidget {
  const Bg({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.black, Colors.transparent],
        ),
        image: DecorationImage(
          image: AssetImage('assets/img/tennis.webp'),
          fit: BoxFit.cover,
        ),
      ),

      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(18),
      child: child,
    );
  }
}

class BgColor extends StatelessWidget {
  const BgColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          begin: AlignmentGeometry.bottomCenter,
          end: AlignmentGeometry.topCenter,
        ),
      ),
    );
  }
}
