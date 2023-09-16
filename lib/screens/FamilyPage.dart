import 'package:flutter/material.dart';
import 'package:project1/screens/Components.dart';

class Family extends StatelessWidget {
  const Family({Key? key}) : super(key: key);

  final List<MembersModel> members = const [
    MembersModel(
      enmember: 'Grandfather',
      path: 'assets/images/family_members/grandfather.png',
      jpmember: 'ojiisan',
      sound: 'sounds/family_members/grandfather.wav',
    ),
    MembersModel(
      enmember: 'Grandmother',
      path: 'assets/images/family_members/grandmother.png',
      jpmember: 'sobo',
      sound: 'sounds/family_members/grandmother.wav',
    ),
    MembersModel(
      enmember: 'Father',
      path: 'assets/images/family_members/father.png',
      jpmember: 'dad',
      sound: 'sounds/family_members/father.wav',
    ),
    MembersModel(
      enmember: 'Mother',
      path: 'assets/images/family_members/mother.png',
      jpmember: 'haha',
      sound: 'sounds/family_members/mother.wav',
    ),
    MembersModel(
      enmember: 'Older Brother',
      path: 'assets/images/family_members/older_brother.png',
      jpmember: 'ani',
      sound: 'sounds/family_members/olderbother.wav',
    ),
    MembersModel(
      enmember: 'Older Sister',
      path: 'assets/images/family_members/older_sister.png',
      jpmember: 'ane',
      sound: 'sounds/family_members/oldersister.wav',
    ),
    MembersModel(
      enmember: 'Younger Brother',
      path: 'assets/images/family_members/younger_brother.png',
      jpmember: 'otouto',
      sound: 'sounds/family_members/youngerbrohter.wav',
    ),
    MembersModel(
      enmember: 'Younger Sister',
      path: 'assets/images/family_members/younger_sister.png',
      jpmember: 'imouto',
      sound: 'sounds/family_members/youngersister.wav',
    ),
    MembersModel(
      enmember: 'Son',
      path: 'assets/images/family_members/son.png',
      jpmember: 'musuko',
      sound: 'sounds/family_members/son.wav',
    ),
    MembersModel(
      enmember: 'Daughter',
      path: 'assets/images/family_members/daughter.png',
      jpmember: 'musume',
      sound: 'sounds/family_members/daughter.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, idx) {
          return Column(
            children: [
              FamilyCategory(member: members[idx]),
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
