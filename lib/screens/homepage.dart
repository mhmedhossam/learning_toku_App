import 'package:flutter/material.dart';
import 'package:tokuapp/components/category_items.dart';
import 'package:tokuapp/screens/color.dart';
import 'package:tokuapp/screens/family_members.dart';
import 'package:tokuapp/screens/numbers_page.dart';
import 'package:tokuapp/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE2E9F9),
      appBar: AppBar(
          leadingWidth: 50,
          leading: const Icon(Icons.menu),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          shadowColor: Colors.blueAccent,
          elevation: 15,
          actions: const [
            SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: const Color(0xff1B47C3),
          title: const Text(
            "TooKu",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumberPage();
                }));
              },
              text: "Numsbers",
              color: const Color(0xffFFB73C)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FamilyMember();
                }));
              },
              text: "FamilyMembers",
              color: const Color(0xff4592DD)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColorPage();
                }));
              },
              text: "Colors",
              color: const Color(0xff27384E)),
          Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: "pharses",
              color: const Color(0xff68F7CB))
        ],
      ),
    );
  }
}
