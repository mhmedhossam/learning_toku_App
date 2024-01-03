import 'package:flutter/material.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/models/Item.dart';
import 'package:tokuapp/screens/homepage.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({super.key});
  final List<ItemModel> familyMember = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jaName: 'ichi',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jaName: 'ichi',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jaName: 'ichi',
        enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jaName: 'son',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jaName: 'ichi',
        enName: 'Grandfather',
        sound: 'sounds/family_members/grand father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jaName: 'ichi',
        enName: 'Grandmother',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jaName: 'ichi',
        enName: 'old brother',
        sound: 'sounds/family_members/older bother.wav'),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jaName: 'ichi',
        enName: 'old sister'),
    ItemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jaName: 'ichi',
        enName: 'young brother'),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jaName: 'ichi',
        enName: 'younger sister')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE2E9F9),
      appBar: AppBar(
          backgroundColor: const Color(0xff1B47C3),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          shadowColor: const Color(0xff1B47C3),
          elevation: 15,
          actions: [
            IconButton(
                icon: const Icon(Icons.home, size: 30, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                }),
            const SizedBox(
              width: 10,
            ),
          ],
          title: const Text(
            "Family Members ",
            style: TextStyle(color: Colors.white),
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: ListView.builder(
            itemCount: familyMember.length,
            itemBuilder: (context, index) {
              return Items(item: familyMember[index]);
            }),
      ),
    );
  }
}
