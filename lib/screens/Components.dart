// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeCategory extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  HomeCategory({this.color, this.text, this.ontap});
  String? text;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(
          left: 6,
        ),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(left: 2, right: 8, bottom: 6, top: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Text(
          text!,
          style: const TextStyle(
            color: Color.fromARGB(231, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}

class NumberCategory extends StatelessWidget {
  const NumberCategory({Key? key, required this.number}) : super(key: key);

  final NumbersModel number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(139, 240, 223, 223),
      height: 100,
      child: Row(
        children: [
          CircleAvatar(
            radius: 38,
            backgroundImage: Image.asset(number.path).image,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpNum,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  number.enNum,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.green,
              size: 34,
            ),
          ),
        ],
      ),
    );
  }
}

class FamilyCategory extends StatelessWidget {
  const FamilyCategory({Key? key, required this.member}) : super(key: key);
  final MembersModel member;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE2E1E9),
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(174, 205, 197, 205),
            height: 100,
            width: 90,
            child: CircleAvatar(
              backgroundImage: AssetImage(member.path),
              radius: 38,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.jpmember,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  member.enmember,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(member.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.green,
              size: 34,
            ),
          ),
        ],
      ),
    );
  }
}

class ColorCategory extends StatelessWidget {
  const ColorCategory({Key? key, required this.color}) : super(key: key);
  final ColorsModel color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(139, 240, 223, 223),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            //color: Color.fromARGB(255, 180, 142, 220),
            child: Image.asset(color.path),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  color.jpcolor,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  color.encolor,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(color.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.green,
              size: 34,
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseCategory extends StatelessWidget {
  const PhraseCategory({Key? key, required this.phrase}) : super(key: key);
  final PhraseModel phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(139, 240, 223, 223),
      height: 140,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.jp,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  phrase.en,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            splashColor: Colors.red,
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(phrase.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Color.fromARGB(207, 64, 23, 248),
              size: 34,
            ),
          ),
        ],
      ),
    );
  }
}

class NumbersModel {
  final String path;
  final String jpNum;
  final String enNum;
  final String sound;
  const NumbersModel({
    required this.path,
    required this.jpNum,
    required this.enNum,
    required this.sound,
  });
}

class MembersModel {
  final String path;
  final String sound;
  final String jpmember;
  final String enmember;

  const MembersModel({
    required this.path,
    required this.sound,
    required this.jpmember,
    required this.enmember,
  });
}

class ColorsModel {
  final String path;
  final String sound;
  final String jpcolor;
  final String encolor;

  const ColorsModel({
    required this.path,
    required this.sound,
    required this.jpcolor,
    required this.encolor,
  });
}

class PhraseModel {
  final String sound;
  final String jp;
  final String en;

  const PhraseModel({
    required this.sound,
    required this.jp,
    required this.en,
  });
}
