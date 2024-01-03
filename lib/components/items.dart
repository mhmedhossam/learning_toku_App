import 'package:flutter/material.dart';
import 'package:tokuapp/components/iteminfo.dart';
import 'package:tokuapp/models/Item.dart';

class Items extends StatelessWidget {
  const Items({
    required this.item,
    super.key,
  });
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
      decoration: const BoxDecoration(
          color: Color(0xff1B47C3),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Row(
        children: [
          Image.asset(
            item.image!,
            cacheHeight: 77,
          ),
          Expanded(
            child: Row(
              children: [
                ItemInfo(
                  item: item,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
