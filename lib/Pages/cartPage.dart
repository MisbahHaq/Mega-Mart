import 'package:flutter/material.dart';
import 'package:megamart/Constants/order_placed.dart';

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
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Cart.items.isEmpty
          ? Center(
              child: Text(
                "Your cart is empty",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightGreen,
        onPressed: () {
          // Calculate the total amount when the checkout button is tapped
          double totalAmount = Cart.items.fold(0, (sum, product) {
            return sum + (product.productPrice * product.quantity);
          });

          // Show bottom sheet when tapped
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CheckOut",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Delivery and Payment Sections at the Top
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        children: [
                          // Delivery Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Select Method",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          // Payment Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Payment",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/images/card.png"),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          // Promo Code Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Promo Code",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Pick discount",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          // Total Price Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Price",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "\$${totalAmount.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    // Terms and Conditions Section
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "By placing an order you agree to our",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Terms ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text("And"),
                            Text(
                              " Conditions",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    // Place Order Button at the Bottom
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderPlaced()),
                        );
                      },
                      child: Center(
                        child: Container(
                          width: 365,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Place Order",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        label: Text("Go to Checkout"),
        icon: Icon(Icons.shopping_cart),
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
