import 'package:flutter/material.dart';
import 'package:megamart/Pages/beveragesPage.dart';
import 'package:megamart/Pages/eggPage.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Find Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 365,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 219, 219),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Store",
                  prefixIcon: Icon(Icons.search_rounded),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/b1.png",
                      width: 175,
                      height: 190,
                    ),
                    Image.asset(
                      "assets/images/b2.png",
                      width: 175,
                      height: 190,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BeveragesPage()));
                      },
                      child: Image.asset(
                        "assets/images/b3.png",
                        width: 175,
                        height: 190,
                      ),
                    ),
                    Image.asset(
                      "assets/images/b4.png",
                      width: 175,
                      height: 190,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EggPage()));
                      },
                      child: Image.asset(
                        "assets/images/b5.png",
                        width: 175,
                        height: 190,
                      ),
                    ),
                    Image.asset(
                      "assets/images/b6.png",
                      width: 175,
                      height: 190,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
