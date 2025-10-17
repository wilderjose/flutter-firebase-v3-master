import 'package:flutter/material.dart';

class ScorsScreen extends StatefulWidget {
  const ScorsScreen({super.key});

  @override
  State<ScorsScreen> createState() => _ScorsScreenState();
}

class _ScorsScreenState extends State<ScorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scores'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
    );
  }
}
