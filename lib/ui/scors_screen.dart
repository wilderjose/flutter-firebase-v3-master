import 'dart:developer';

import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  String? newname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puntaje control'),
        actions: [
          IconButton(
            onPressed: () async {
              final name = await showRegisterDialog();
              if (name != null && name.isNotEmpty) {
                setState(() {
                  newname = name;
                });
              }
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Buscar por nombre',
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (newname != null && newname!.isNotEmpty)
                      Card(
                        child: ListTile(
                          title: Text(newname!),
                          subtitle: Text('3 pts'),
                          onTap: () {
                            showBottomSheetScore();
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheetScore() {
    final scores = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                spacing: 12,
                children: [
                  for (final score in scores)
                    FilledButton(onPressed: () {}, child: Text('+$score')),
                ],
              ),

              FilledButton(onPressed: () {}, child: Text('Asignar')),
              SizedBox(height: 12),
            ],
          ),
        );
      },
    );
  }

  Future<String> showRegisterDialog() async {
    final textContoller = TextEditingController();

    final result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Registrar'),
          content: TextField(
            controller: textContoller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nombre completo',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, textContoller.text);
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
    return result;
  }
}
