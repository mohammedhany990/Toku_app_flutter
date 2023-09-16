import 'package:flutter/material.dart';
import 'package:project1/screens/Components.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ColorsModel> colors = const [
    ColorsModel(
      encolor: 'Black',
      jpcolor: 'burakku ',
      path: 'assets/images/colors/black.png',
      sound: 'sounds/colors/black.wav',
    ),
    ColorsModel(
      encolor: 'Brown',
      jpcolor: 'Chairo',
      path: 'assets/images/colors/brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    ColorsModel(
      encolor: 'Dusty Yellow',
      jpcolor: 'Dasutiierō',
      path: 'assets/images/colors/dusty_yellow.png',
      sound: 'sounds/colors/dustyyellow.wav',
    ),
    ColorsModel(
      encolor: 'Gray',
      jpcolor: 'gure-',
      path: 'assets/images/colors/gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    ColorsModel(
      encolor: 'Green',
      jpcolor: 'Midori iro',
      path: 'assets/images/colors/green.png',
      sound: 'sounds/colors/green.wav',
    ),
    ColorsModel(
      encolor: 'Red',
      jpcolor: 'Aka',
      path: 'assets/images/colors/red.png',
      sound: 'sounds/colors/red.wav',
    ),
    ColorsModel(
      encolor: 'White',
      jpcolor: 'Shiro',
      path: 'assets/images/colors/white.png',
      sound: 'sounds/colors/white.wav',
    ),
    ColorsModel(
      encolor: 'Yellow',
      jpcolor: 'Kiiro',
      path: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Family',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 2, 2),
            fontSize: 30,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, idx) {
          return Column(
            children: [
              ColorCategory(color: colors[idx]),
              if (idx < 9)
                const Divider(
                  thickness: 5,
                  height: 1,
                )
            ],
          );
        },
      ),
    );
  }
}
