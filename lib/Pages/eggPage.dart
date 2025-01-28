import 'package:flutter/material.dart';
import 'package:megamart/Constants/product_card.dart';
import 'package:megamart/Constants/product_detail.dart';

class EggPage extends StatefulWidget {
  const EggPage({super.key});

  @override
  State<EggPage> createState() => _EggPageState();
}

class _EggPageState extends State<EggPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Eggs",
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
                              productName: "Egg Chicken Red",
                              productImage: "assets/images/egg.png",
                              productPrice: 1.99,
                              productDescription: "Egg is cool",
                              productWeight: "4pcs",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Egg Chicken Red",
                        productImage: "assets/images/egg.png",
                        productPrice: 1.99,
                        productDescription: "Egg is cool",
                        productWeight: "4pcs",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Egg Chicken White",
                              productImage: "assets/images/egg2.png",
                              productPrice: 1.50,
                              productDescription: "Egg is cool",
                              productWeight: "180g",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Egg Chicken White",
                        productImage: "assets/images/egg2.png",
                        productPrice: 1.50,
                        productDescription: "Egg is cool",
                        productWeight: "180g",
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Egg Noodles",
                              productImage: "assets/images/wgg3.png",
                              productPrice: 1.99,
                              productDescription: "Egg is cool",
                              productWeight: "2L",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Egg Noodles",
                        productImage: "assets/images/wgg3.png",
                        productPrice: 1.99,
                        productDescription: "Egg is cool",
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
                              productName: "Mayonnais Eggless",
                              productImage: "assets/images/egg4.png",
                              productPrice: 1.99,
                              productDescription: "Egg is cool",
                              productWeight: "355ml",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Mayonnais Eggless",
                        productImage: "assets/images/egg4.png",
                        productPrice: 1.99,
                        productDescription: "Egg is cool",
                        productWeight: "355ml",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: "Egg Noodles",
                              productImage: "assets/images/egg5.png",
                              productPrice: 1.99,
                              productDescription: "Egg is cool",
                              productWeight: "355ml",
                            ),
                          ),
                        );
                      },
                      child: ProductCard(
                        productName: "Egg Noodles",
                        productImage: "assets/images/egg5.png",
                        productPrice: 1.99,
                        productDescription: "Egg is cool",
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
