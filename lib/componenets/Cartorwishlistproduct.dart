import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _CartproductsState createState() => _CartproductsState();
}

class _CartproductsState extends State<Cart_products> {
  var Products_on_Cart_var = [
    //=============this is our wishlist  product list=============

    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
    },
    {
      "name": "Item 3",
      "picture": 'images/burger shop.jpg',
      "rating": 4.9,
      "price": 7878000,
    },

    //product list close by here .
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_Cart_var.length,
      itemBuilder: (context, index) {
        return Single_cart_Product(
          cart_product_name: Products_on_Cart_var[index]["name"],
          cart_prod_picture: Products_on_Cart_var[index]["picture"],
          cart_prod_rating: Products_on_Cart_var[index]["rating"],
          cart_prod_price: Products_on_Cart_var[index]["price"],
        );
      },
    );
  }
}

class Single_cart_Product extends StatelessWidget {
  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_rating;
  final cart_prod_price;

  Single_cart_Product(
      {this.cart_product_name,
      this.cart_prod_picture,
      this.cart_prod_rating,
      this.cart_prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: new Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Rating:"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("$cart_prod_price"),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
