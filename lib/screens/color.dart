import 'package:flutter/material.dart';
import 'package:tokuapp/components/items.dart';
import 'package:tokuapp/models/Item.dart';
import 'package:tokuapp/screens/homepage.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({
    super.key,
  });

  final List<ItemModel> colorp = const [
    ItemModel(
        enName: "black",
        image: "assets/images/colors/color_black.png",
        jaName: "ichi",
        sound: "sounds/colors/black.wav"),
    ItemModel(
        enName: "brown",
        image: "assets/images/colors/color_brown.png",
        jaName: "Ni",
        sound: "sounds/colors/brown.wav"),
    ItemModel(
        enName: "dusty yellow",
        image: "assets/images/colors/color_dusty_yellow.png",
        jaName: "san",
        sound: "sounds/numbers/number_three_sound.mp3"),
    ItemModel(
      enName: "color gray",
      image: "assets/images/colors/color_gray.png",
      jaName: "Shi",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemModel(
        enName: "green",
        image: "assets/images/colors/color_green.png",
        jaName: "Go",
        sound: "sounds/numbers/number_five_sound.mp3"),
    ItemModel(
        enName: "red",
        image: "assets/images/colors/color_red.png",
        jaName: "Roku",
        sound: "sounds/numbers/number_six_sound.mp3"),
    ItemModel(
        enName: "white",
        image: "assets/images/colors/color_white.png",
        jaName: "Sebun",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    ItemModel(
        enName: "yello",
        image: "assets/images/colors/yellow.png",
        jaName: "hachi",
        sound: "sounds/numbers/number_eight_sound.mp3"),
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
              "Colors ",
              style: TextStyle(color: Colors.white),
            )),
        body: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: ListView.builder(
            itemCount: colorp.length,
            itemBuilder: (context, x) {
              return Items(item: colorp[x]);
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
