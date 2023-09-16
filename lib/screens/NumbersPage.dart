// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:project1/screens/Components.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<NumbersModel> numbers = const [
    NumbersModel(
      path: 'assets/images/NumImg/1.jpg',
      jpNum: 'ichi',
      enNum: 'One',
      sound: 'sounds/NumbersSounds/1.mp3',
    ),
    NumbersModel(
        path: 'assets/images/NumImg/2.jpg',
        jpNum: 'ni',
        enNum: 'Two',
        sound: 'sounds/NumbersSounds/2.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/3.jpg',
        jpNum: 'san',
        enNum: 'Three',
        sound: 'sounds/NumbersSounds/3.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/4.jpg',
        jpNum: 'Shi',
        enNum: 'Four',
        sound: 'sounds/NumbersSounds/4.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/5.jpg',
        jpNum: 'Itsutsu',
        enNum: 'Five',
        sound: 'sounds/NumbersSounds/5.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/6.jpg',
        jpNum: 'roku',
        enNum: 'Six',
        sound: 'sounds/NumbersSounds/6.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/7.jpg',
        jpNum: 'nana',
        enNum: 'Seven',
        sound: 'sounds/NumbersSounds/7.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/8.jpg',
        jpNum: 'hachi',
        enNum: 'Eight',
        sound: 'sounds/NumbersSounds/8.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/9.jpg',
        jpNum: 'kyuu',
        enNum: 'Nine',
        sound: 'sounds/NumbersSounds/9.mp3'),
    NumbersModel(
        path: 'assets/images/NumImg/10.jpg',
        jpNum: 'Tō',
        enNum: 'Ten',
        sound: 'sounds/NumbersSounds/10.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, idx) {
          return Column(
            children: [
              NumberCategory(number: numbers[idx]),
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
/*
ListView(
        children: [
          for (int i = 0; i < numbers.length; i++)
            NumbersInJapanese(
              nums: numbers[i],
            ),
        ],
      ),
*/