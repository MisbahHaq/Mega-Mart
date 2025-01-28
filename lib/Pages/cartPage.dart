import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("My Cart"),
      ),
      body: Cart.items.isEmpty
          ? Center(child: Text("Your cart is empty"))
          : ListView.builder(
              itemCount: Cart.items.length,
              itemBuilder: (context, index) {
                final product = Cart.items[index];

                // Calculate total price for each product (price * quantity)
                double totalPrice = product.productPrice * product.quantity;

                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.3),
                    //     spreadRadius: 2,
                    //     blurRadius: 5,
                    //   ),
                    // ],
                    border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      // Product Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          product.productImage,
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 15),

                      // Product Details and Add/Remove Buttons
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Product Name and Close Icon
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    product.productName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.close, color: Colors.grey),
                                  onPressed: () {
                                    setState(() {
                                      Cart.items.removeAt(index);
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "${product.productWeight}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(height: 10),

                            // Add/Remove Buttons and Price in Same Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Add/Remove Buttons with Border
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.remove,
                                            color: Colors.grey),
                                        onPressed: product.quantity > 1
                                            ? () {
                                                setState(() {
                                                  product.quantity--;
                                                });
                                              }
                                            : null,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      product.quantity.toString(),
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 1),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.add,
                                            color: Colors.lightGreen),
                                        onPressed: () {
                                          setState(() {
                                            product.quantity++;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                // Price
                                Text(
                                  "\$${totalPrice.toStringAsFixed(2)}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}

class Cart {
  static List<Product> items = [];
}

class Product {
  final String productName;
  final String productImage;
  final double productPrice;
  final String productDescription;
  final String productWeight;
  int quantity; // Track quantity for each product

  Product({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
    required this.productWeight,
    this.quantity = 1, // Initialize quantity to 1 by default
  });
}
