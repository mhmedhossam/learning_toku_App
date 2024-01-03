import 'package:flutter/material.dart';
import 'package:tokuapp/components/iteminfo.dart';
import 'package:tokuapp/models/Item.dart';
import 'package:tokuapp/screens/homepage.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
        sound: "sounds/phrases/are_you_coming.wav",
        jaName: "Hai _ im _ kamingu",
        enName: "are_you_coming"),
    ItemModel(
        sound: "dont_forget_to_subscribe.wav",
        jaName: "Hai _ im _ kamingu",
        enName: "dont_forget_to_subscribe"),
    ItemModel(
        sound: "how_are_you_feeling.wav",
        jaName: "Hai _ im _ kamingu",
        enName: "how_are_you_feeling"),
    ItemModel(
        sound: "i_love_anime.wav",
        jaName: "Hai _ im _ kamingu",
        enName: "i_love_anime"),
    ItemModel(
        sound: "i_love_programming.wav",
        jaName: "Hai _ im _ kamingu",
        enName: "i_love_programming"),
    ItemModel(
        sound: "programming_is_easy.wav",
        jaName: "Hai _ im _ kamingu",
        enName: "programming_is_easy"),
    ItemModel(
        sound: "what_is_your_name.wav",
        jaName: "Hai _ im _ kamingu",
        enName: "what_is_your_name"),
    ItemModel(
        sound: "where_are_you_going.wav",
        jaName: "Hai  im  kamingu",
        enName: "where_are_you_going"),
    ItemModel(
        sound: "yes_im_coming.wav",
        jaName: "Hah am hamingu",
        enName: "yes_im_coming"),
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
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  }),
              const SizedBox(
                width: 10,
              ),
            ],
            title: const Text(
              "Phrases ",
              style: TextStyle(color: Colors.white),
            )),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, x) {
              return Row(
                children: [
                  ItemInfo(
                    item: phrases[x],
                  ),
                ],
              );
            }));
  }
}
