import 'package:flutter/material.dart';
import 'package:megamart/Constants/product_card.dart';
import 'package:megamart/Constants/product_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset("assets/images/car.png"),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5.9,
                    ),
                    Icon(Icons.location_on_rounded,
                        color: const Color.fromARGB(255, 112, 112, 112)),
                    Text(
                      "Karachi, Pakistan",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 112, 112, 112)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 216, 216, 216),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Store",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Image.asset("assets/images/carou.png"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Exclusive Offer",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    productName: "Natural Apple",
                                    productImage: "assets/images/apple.png",
                                    productPrice: 4.99,
                                    productDescription: "Apple is cool",
                                    productWeight: "7pcs",
                                  ),
                                ),
                              );
                            },
                            child: ProductCard(
                              productName: "Natural Apple",
                              productImage: "assets/images/apple.png",
                              productPrice: 4.99,
                              productDescription: "Apple is cool",
                              productWeight: "7pcs",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    productName: "Egg Pasta",
                                    productImage: "assets/images/eggpasta.png",
                                    productPrice: 4.99,
                                    productDescription: "Egg is cool",
                                    productWeight: "30gm",
                                  ),
                                ),
                              );
                            },
                            child: ProductCard(
                              productName: "Egg Pasta",
                              productImage: "assets/images/eggpasta.png",
                              productPrice: 4.99,
                              productDescription: "Egg is cool",
                              productWeight: "30gm",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    productName: "Natural Apple",
                                    productImage: "assets/images/apple.png",
                                    productPrice: 4.99,
                                    productDescription: "Apple is cool",
                                    productWeight: "7pcs",
                                  ),
                                ),
                              );
                            },
                            child: ProductCard(
                              productName: "Natural Apple",
                              productImage: "assets/images/apple.png",
                              productPrice: 4.99,
                              productDescription: "Apple is cool",
                              productWeight: "7pcs",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Best Selling",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  productName: "Bell Pepper Red",
                                  productImage: "assets/images/pepper.png",
                                  productPrice: 4.99,
                                  productDescription: "Pepper is cool",
                                  productWeight: "1kg",
                                ),
                              ),
                            );
                          },
                          child: ProductCard(
                            productName: "Bell Pepper Red",
                            productImage: "assets/images/pepper.png",
                            productPrice: 4.99,
                            productDescription: "Pepper is cool",
                            productWeight: "1kg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    productName: "Ginger",
                                    productImage: "assets/images/adrak.png",
                                    productPrice: 4.99,
                                    productDescription: "Ginger is cool",
                                    productWeight: "250gm",
                                  ),
                                ),
                              );
                            },
                            child: ProductCard(
                              productName: "Ginger",
                              productImage: "assets/images/adrak.png",
                              productPrice: 4.99,
                              productDescription: "Ginger is cool",
                              productWeight: "250gm",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Groceries",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 250,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xffF8A44C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child:
                                        Image.asset("assets/images/pulse.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Pulses",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 250,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xff53B175),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child:
                                        Image.asset("assets/images/rice.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Rice",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  productName: "Beef Bone",
                                  productImage: "assets/images/meat.png",
                                  productPrice: 4.99,
                                  productDescription: "Big Beef Guy",
                                  productWeight: "1kg",
                                ),
                              ),
                            );
                          },
                          child: ProductCard(
                            productName: "Beef Bone",
                            productImage: "assets/images/meat.png",
                            productPrice: 4.99,
                            productDescription: "Big Beef Guy",
                            productWeight: "1kg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    productName: "Broiler Chicken",
                                    productImage: "assets/images/chicken.png",
                                    productPrice: 4.99,
                                    productDescription: "Chicken is cool",
                                    productWeight: "1kg",
                                  ),
                                ),
                              );
                            },
                            child: ProductCard(
                              productName: "Broiler Chicken",
                              productImage: "assets/images/chicken.png",
                              productPrice: 4.99,
                              productDescription: "Chicken is cool",
                              productWeight: "1kg",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
