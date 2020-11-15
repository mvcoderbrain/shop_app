import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;

  ProductsGrid(this.showFavs);
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final productItem =
        showFavs ? productsData.showFavorites : productsData.items;

    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: productItem.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: productItem[i],
        child: ProductItem(
            // productItem[i].id,
            // productItem[i].title,
            // productItem[i].imageUrl,
            ),
      ),
    );
  }
}
