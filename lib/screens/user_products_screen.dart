import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/user_product_item.dart';
import '../widgets/app_drawer.dart';
import './edit_product_screen.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';

  Future<void> _refreshProducts(BuildContext context) async {
<<<<<<< HEAD
    await Provider.of<Products>(context, listen: false)
        .fetchAndSetProducts(true);
=======
    await Provider.of<Products>(context).fetchAndSetProducts();
>>>>>>> 8b9494af6f8b4c4743b9fac74f7057c29c238b0a
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // final productsData = Provider.of<Products>(context);
    print('rebuilding...');
=======
    final productsData = Provider.of<Products>(context);
>>>>>>> 8b9494af6f8b4c4743b9fac74f7057c29c238b0a
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
          ),
        ],
      ),
      drawer: AppDrawer(),
<<<<<<< HEAD
      body: FutureBuilder(
        future: _refreshProducts(context),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : RefreshIndicator(
                    onRefresh: () => _refreshProducts(context),
                    child: Consumer<Products>(
                      builder: (ctx, productsData, _) => Padding(
                            padding: EdgeInsets.all(8),
                            child: ListView.builder(
                              itemCount: productsData.items.length,
                              itemBuilder: (_, i) => Column(
                                    children: [
                                      UserProductItem(
                                        productsData.items[i].id,
                                        productsData.items[i].title,
                                        productsData.items[i].imageUrl,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                            ),
                          ),
                    ),
                  ),
=======
      body: RefreshIndicator(
        onRefresh: () => _refreshProducts(context),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: productsData.items.length,
            itemBuilder: (_, i) => Column(
                  children: [
                    UserProductItem(
                      productsData.items[i].id,
                      productsData.items[i].title,
                      productsData.items[i].imageUrl,
                    ),
                    Divider(),
                  ],
                ),
          ),
        ),
>>>>>>> 8b9494af6f8b4c4743b9fac74f7057c29c238b0a
      ),
    );
  }
}
