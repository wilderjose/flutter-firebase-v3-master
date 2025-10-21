import 'dart:developer';

import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    log('Size $size');
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromARGB(255, 218, 53, 3),
              child: Center(child: Text('1er expanded')),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 163, 13, 13),
              child: Center(child: Text('2do expanded')),
            ),
          ),
        ],
      ),
    );
  }
}
