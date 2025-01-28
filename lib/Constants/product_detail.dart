import 'package:flutter/material.dart';
import 'package:megamart/Pages/cartPage.dart';

// You can store the favorite items globally
List<Product> favoriteItems = [];

class DetailPage extends StatefulWidget {
  final String productName;
  final String productImage;
  final double productPrice;
  final String productDescription;
  final String productWeight;

  DetailPage({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
    required this.productWeight,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double productQuantity = 1;

  bool isFavorited = false;

  void increaseQuantity() {
    setState(() {
      productQuantity++;
    });
  }

  void decreaseQuantity() {
    if (productQuantity > 1) {
      setState(() {
        productQuantity--;
      });
    }
  }

  void toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited;

      if (isFavorited) {
        favoriteItems.add(Product(
          productName: widget.productName,
          productImage: widget.productImage,
          productPrice: widget.productPrice,
          productDescription: widget.productDescription,
          productWeight: widget.productWeight,
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.productPrice * productQuantity;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                    ),
                    child: Image.asset(
                      widget.productImage,
                      height: 375,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.productName,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.productWeight,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 124, 124, 124),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: toggleFavorite,
                              child: Icon(
                                isFavorited
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_border_rounded,
                                color: isFavorited ? Colors.red : Colors.grey,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide.none,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                onPressed: decreaseQuantity,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.grey)),
                                child: Center(
                                    child: Text(
                                  productQuantity.toStringAsFixed(0),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.lightGreen,
                                ),
                                onPressed: increaseQuantity,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            '\$${totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Product Detail",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(widget.productDescription,
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nutritions",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Review",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Icon(Icons.star_rounded),
                                Icon(Icons.star_rounded),
                                Icon(Icons.star_rounded),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 365,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Cart.items.add(Product(
                            productName: widget.productName,
                            productImage: widget.productImage,
                            productPrice: widget.productPrice,
                            productDescription: widget.productDescription,
                            productWeight: widget.productWeight,
                          ));

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  '${widget.productName} has been added to the basket!'),
                            ),
                          );
                        },
                        child: Text(
                          'Add to Basket',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
