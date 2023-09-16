import 'package:flutter/material.dart';
import 'package:project1/screens/Components.dart';
import 'package:project1/screens/NumbersPage.dart';
import 'package:project1/screens/FamilyPage.dart';
import 'package:project1/screens/PhrasePage.dart';
import 'package:project1/screens/ColorPage.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        hoverColor: Colors.blue,
        splashColor: Colors.green,
        tooltip: 'ADD',
        child: const Icon(
          Icons.add_circle_outlined,
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0XFF6048D2),
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          HomeCategory(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return NumbersPage();
                },
              ));
            },
            text: 'Numbers',
            color: const Color(0xFFE2E1E9),
          ),
          HomeCategory(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Family();
                },
              ));
            },
            text: 'Family Numbers',
            color: const Color(0xFFE2E1E9),
          ),
          HomeCategory(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ColorsPage();
                },
              ));
            },
            text: 'Colors',
            color: const Color(0xFFE2E1E9),
          ),
          HomeCategory(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PhrasePage();
                },
              ));
            },
            text: 'Pherases',
            color: const Color(0xFFE2E1E9),
          ),
        ],
      ),
    );
  }
}
