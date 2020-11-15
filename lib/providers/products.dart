import 'package:flutter/material.dart';

import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'T-Shirt',
      description: 'Striped Men Hooded Neck Dark Blue, Red T-Shirt',
      price: 299,
      imageUrl:
          'https://rukminim1.flixcart.com/image/800/960/keokpe80-0/t-shirt/o/2/k/3xl-bnvrdhdful-z13-blive-original-imafvaxzmyntzqeu.jpeg?q=50',
    ),
    Product(
      id: 'p2',
      title: 'Shirt',
      description: 'Men Slim Fit Solid Formal Shirt',
      price: 599,
      imageUrl:
          'https://rukminim1.flixcart.com/image/495/594/jh9fy4w0/shirt/8/g/c/s-pblue39-trendz-deeksha-original-imaenq8jg9fsssnk.jpeg?q=50',
    ),
    Product(
      id: 'p3',
      title: 'Jeans',
      description: 'Jogger Fit Men Grey Jeans',
      price: 799,
      imageUrl:
          'https://rukminim1.flixcart.com/image/800/960/jhavdzk0/jean/j/x/p/30-hpsjogger-lgrey-urbano-fashion-original-imaf5bzbhhvwu9by.jpeg?q=50',
    ),
    Product(
      id: 'p4',
      title: 'Trousers',
      description: 'Regular Fit Men Blue Polyester Viscose Blend Trousers',
      price: 548,
      imageUrl:
          'https://rukminim1.flixcart.com/image/800/960/kfoapow0-0/trouser/7/p/g/28-formal-blue-classio-original-imafw2jxuevz5wxv.jpeg?q=50',
    ),
    Product(
      id: 'p5',
      title: 'Suit Material',
      description:
          'Saara Crepe Solid, Floral Print, Printed Salwar Suit Material  (Unstitched)',
      price: 499,
      imageUrl:
          'https://rukminim1.flixcart.com/image/800/960/k1tm1e80/fabric/g/r/z/899d197-852d158-saara-original-imafkfcwqhpkdmmg.jpeg?q=50',
    ),
    Product(
      id: 'p6',
      title: 'Legging',
      description: 'Misaina Ankle Length Legging  (Black, Solid)',
      price: 229,
      imageUrl:
          'https://rukminim1.flixcart.com/image/416/416/kar44280/legging/h/h/g/free-pre-lycra-pant-misaina-original-imafs9grwwwumsnd.jpeg?q=70',
    ),
    Product(
      id: 'p7',
      title: 'Dupatta',
      description: 'Chiffon Printed Multicolor Women Dupatta',
      price: 259,
      imageUrl:
          'https://rukminim1.flixcart.com/image/800/960/jt4olu80/dupatta/z/7/k/na-2-25-meters-dp-pr-rainbow-white-weavers-villa-na-original-imafekf6d9r5ut7b.jpeg?q=50',
    ),
    Product(
      id: 'p8',
      title: 'Teddy Bear',
      description:
          'Guddeywala 3 Feet Teddy Bear I Love You Jumbo For Some One Special - 90 cm (Pink) - 91 cm  (Pink)',
      price: 499,
      imageUrl:
          'https://rukminim1.flixcart.com/image/416/416/k5wse4w0/stuffed-toy/b/6/s/pink-smart-teddy-bear-3-feet-for-90cm-gift-st-e-spaciel-some-one-original-imafhpyahjqf3weh.jpeg?q=70',
    ),
    Product(
      id: 'p9',
      title: 'Pans',
      description:
          'Flipkart SmartBuy Induction Bottom Pan 26 cm diameter  (Aluminium, Non-stick, Induction Bottom)',
      price: 649,
      imageUrl:
          'https://rukminim1.flixcart.com/image/416/416/k0zlsi80/cookware-set/x/6/t/8904216510990-14099-pigeon-original-imafknfe3bqybfmj.jpeg?q=70',
    ),
    Product(
      id: 'p10',
      title: 'Televisions',
      description: 'Mi 4X 125.7 cm (50) Ultra HD (4K) LED Smart Android TV',
      price: 31999,
      imageUrl:
          'https://rukminim1.flixcart.com/image/416/416/keq058w0/television/f/h/e/mi-l32m6-ei-original-imafvcbhap72hury.jpeg?q=70',
    ),
  ];

  // var _showFavoriteOnly = false;

  List<Product> get items {
    // if (_showFavoriteOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get showFavorites {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere(
      (prod) => prod.id == id,
    );
  }

  void addProduct() {
    notifyListeners();
  }

  // void showFavoriteOnly() {
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }
}
