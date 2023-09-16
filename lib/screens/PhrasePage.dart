import 'package:flutter/material.dart';
import 'package:project1/screens/Components.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({Key? key}) : super(key: key);

  final List<PhraseModel> phrase = const [
    PhraseModel(
      en: 'Are you coming?',
      jp: 'Kimasu ka? ',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    PhraseModel(
      en: "don't forget to subscribe",
      jp: 'Kōdoku suru koto o wasurenaide\nkudasai ',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhraseModel(
      en: 'How are you feeling?',
      jp: 'Go kibun wa ikagadesu ka? ',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhraseModel(
      en: 'I love Anime.',
      jp: 'Watashi wa anime ga daisukidesu.',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    PhraseModel(
      en: 'I love programming',
      jp: 'Watashi wa puroguramingu ga\ndaisukidesu ',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F3F3),
        title: const Text(
          'Family',
          style: TextStyle(
            color: const Color.fromARGB(255, 2, 2, 2),
            fontSize: 30,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, idx) {
          return Column(
            children: [
              PhraseCategory(phrase: phrase[idx]),
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
