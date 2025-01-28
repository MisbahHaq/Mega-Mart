import 'package:flutter/material.dart';
import 'package:megamart/Constants/product_detail.dart';
import 'package:megamart/Pages/cartPage.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Favorites',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: favoriteItems.isEmpty
          ? Center(child: Text('No favorites yet!'))
          : ListView.builder(
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                final product = favoriteItems[index];
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 30, bottom: 30),
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        product.productImage,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        product.productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('${product.productWeight}'),
                      trailing: GestureDetector(
                        onTap: () {
                          favoriteItems.removeAt(index);
                        },
                        child: Text(
                          '\$${product.productPrice.toString()}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              productName: product.productName,
                              productImage: product.productImage,
                              productPrice: product.productPrice,
                              productDescription: product.productDescription,
                              productWeight: product.productWeight,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
