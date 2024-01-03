import 'package:flutter/material.dart';
import 'package:tokuapp/models/Item.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 7),
              decoration: const BoxDecoration(
                  color: Color(0xff4592DD),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: 70,
              child: Row(
                children: [
                  const Spacer(
                    flex: 6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jaName,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Text(
                        item.enName,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 50,
                  ),
                  IconButton(
                    splashColor: const Color(0xff1B47C3),
                    onPressed: () {
                      item.playsound();
                    },
                    icon: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
