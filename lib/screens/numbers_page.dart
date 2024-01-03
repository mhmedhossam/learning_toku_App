import 'package:flutter/material.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/models/Item.dart';
import 'package:tokuapp/screens/homepage.dart';

class NumberPage extends StatelessWidget {
  NumberPage({
    super.key,
  });

  final List<ItemModel> numberp = [
    const ItemModel(
        enName: "one",
        image: "assets/images/numbers/number_one.png",
        jaName: "ichi",
        sound: "sounds/numbers/number_one_sound.mp3"),
    const ItemModel(
        enName: "two",
        image: "assets/images/numbers/number_two.png",
        jaName: "Ni",
        sound: "sounds/numbers/number_two_sound.mp3"),
    const ItemModel(
        enName: "three",
        image: "assets/images/numbers/number_three.png",
        jaName: "san",
        sound: "sounds/numbers/number_three_sound.mp3"),
    const ItemModel(
      enName: "four",
      image: "assets/images/numbers/number_four.png",
      jaName: "Shi",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    const ItemModel(
        enName: "five",
        image: "assets/images/numbers/number_five.png",
        jaName: "Go",
        sound: "sounds/numbers/number_five_sound.mp3"),
    const ItemModel(
        enName: "six",
        image: "assets/images/numbers/number_six.png",
        jaName: "Roku",
        sound: "sounds/numbers/number_six_sound.mp3"),
    const ItemModel(
        enName: "seven",
        image: "assets/images/numbers/number_seven.png",
        jaName: "Sebun",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    const ItemModel(
        enName: "eight",
        image: "assets/images/numbers/number_eight.png",
        jaName: "hachi",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    const ItemModel(
        enName: "nine",
        image: "assets/images/numbers/number_nine.png",
        jaName: "Kyū",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    const ItemModel(
        enName: "ten",
        image: "assets/images/numbers/number_ten.png",
        jaName: 'Jū',
        sound: "sounds/numbers/number_ten_sound.mp3"),
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
              "Numbers ",
              style: TextStyle(color: Colors.white),
            )),
        body: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: ListView.builder(
            itemCount: numberp.length,
            itemBuilder: (context, x) {
              return Items(item: numberp[x]);
            },
          ),
        ));
  }
}










/*
شرحه مهم جدااااااااا


ListView(children: getList(numbers)),
List<Widget> getList(List<Numbers> numbers) {
  List<Widget> itemList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(NumberItem(number: numbers[i]));
  }
  return itemList;
}


ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, number) {
            return NumberItem(number: numbers[number]);
          },
        ));
        */
