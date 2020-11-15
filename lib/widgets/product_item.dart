import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/product.dart';

import '../screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(
  //   this.id,
  //   this.title,
  //   this.imageUrl,
  // );
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: product.id,
          );
        },
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.contain,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: Consumer<Product>(
              builder: (ctx, product, child) => IconButton(
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                ),
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
                color: Theme.of(context).accentColor,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
              ),
              child: Text(
                product.title,
                textAlign: TextAlign.center,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                cart.addItem(
                  product.id,
                  product.title,
                  product.price,
                );
              },
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
