import 'package:flutter/material.dart';
import 'package:revenau/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    //=============this is our product list=============
    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 3",
      "picture": 'images/burger shop.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },

    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 3",
      "picture": 'images/burger shop.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },

    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 3",
      "picture": 'images/burger shop.jpg',
      "rating": 4.9,
      "icons": Icons.favorite,
    },

    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 3",
      "picture": 'images/burger shop.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },

    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 3",
      "picture": 'images/burger shop.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },

    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },
    {
      "name": "Item 3",
      "picture": 'images/burger shop.jpg',
      "rating": 4.9,
      "price": 7878000,
      "icons": Icons.favorite,
    },

    //product list close by here .
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
              product_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_rating: product_list[index]['rating'],
              prod_price: product_list[index]['price'],
              prod_love: product_list[index]['icons']);
        });
  }
}

/////////////////product details class/////////
class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_rating;
  final prod_price;
  final prod_love;

  Single_prod(
      {this.product_name,
        this.prod_picture,
        this.prod_rating,
        this.prod_price,
        this.prod_love});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 8,
      shadowColor: Colors.black,
      margin: EdgeInsets.all(10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.transparent, width: 5)),
      child: Hero(
        tag: product_name,
        child: Container(
          height: 45,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                // here we are passing the values of of the product details page
                  builder: (context) => new ProductDetails(
                    product_details_name: product_name,
                    product_details_price: prod_price,
                    product_details_rating: prod_rating,
                    product_details_picture: prod_picture,
                  ))),
              child: GridTile(
                //===========header will be added here===================

                footer: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 20.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),

                  height: 60,

                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing:
                    Icon(Icons.favorite_border, color: Colors.red,),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "$prod_rating",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),

                child: Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 200,
                        width: 250,
                        image: AssetImage(prod_picture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
