import 'package:flutter/material.dart';
import 'package:megamart/Constants/product_card.dart';
import 'package:megamart/Constants/product_detail.dart';

class BeveragesPage extends StatefulWidget {
  const BeveragesPage({super.key});

  @override
  State<BeveragesPage> createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Beverages",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Apple Juice",
                              productImage: "assets/images/coke3.png",
                              productPrice: 15.99,
                              productDescription: "Coke is cool",
                              productWeight: "2L",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Apple Juice",
                        productImage: "assets/images/coke3.png",
                        productPrice: 15.99,
                        productDescription: "Coke is cool",
                        productWeight: "2L",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Orange Juice",
                              productImage: "assets/images/coke4.png",
                              productPrice: 15.99,
                              productDescription: "Coke is cool",
                              productWeight: "2L",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Orange Juice",
                        productImage: "assets/images/coke4.png",
                        productPrice: 15.99,
                        productDescription: "Coke is cool",
                        productWeight: "2L",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Coca Cola Can",
                              productImage: "assets/images/coke5.png",
                              productPrice: 4.99,
                              productDescription: "Coke is cool",
                              productWeight: "325ml",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Coca Cola Can",
                        productImage: "assets/images/coke5.png",
                        productPrice: 4.99,
                        productDescription: "Coke is cool",
                        productWeight: "325ml",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Pepsi Can",
                              productImage: "assets/images/coke6.png",
                              productPrice: 1.99,
                              productDescription: "Coke is cool",
                              productWeight: "330ml",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Pepsi Can",
                        productImage: "assets/images/coke6.png",
                        productPrice: 1.99,
                        productDescription: "Coke is cool",
                        productWeight: "330ml",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Diet Coke",
                              productImage: "assets/images/coke.png",
                              productPrice: 1.99,
                              productDescription: "Coke is cool",
                              productWeight: "355ml",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Diet Coke",
                        productImage: "assets/images/coke.png",
                        productPrice: 1.99,
                        productDescription: "Coke is cool",
                        productWeight: "355ml",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Diet Coke",
                              productImage: "assets/images/coke.png",
                              productPrice: 1.99,
                              productDescription: "Coke is cool",
                              productWeight: "355ml",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Diet Coke",
                        productImage: "assets/images/coke.png",
                        productPrice: 1.99,
                        productDescription: "Coke is cool",
                        productWeight: "355ml",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
