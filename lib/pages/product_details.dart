import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revenau/main.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_price;
  final product_details_rating;
  final product_details_picture;

  ProductDetails(
      {this.product_details_name,
      this.product_details_price,
      this.product_details_rating,
      this.product_details_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        // this codes removes the shadow of appbar
        elevation: 0.1,
        // this codes removes the shadow of appbar--
        backgroundColor: Colors.amberAccent,
        title:
            //================from here we can back to home page via pressing logo name====================
            InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new Homepage()));
          },
          child: Text("Revunau"),
        ),
        //================from here we can back to home page via pressing logo name====================end

        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: new Container(
                //detais footer er color transparency ekhane set kora jabe
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\tRating: ${widget.product_details_rating}",
                        style: TextStyle(color: Colors.green),
                      )),
                      Expanded(
                          child: new Text(
                              "\tPrice: ${widget.product_details_price}",
                              style: TextStyle(color: Colors.green))),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //============================the first buttons=======================

          Row(
            children: <Widget>[
              //===================the size button=======================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    //alert message boshbe start ========================
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Make a contact"),
                            content: new Text("Phone nunber provided"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  //alert dialog show gotta close by the following codes start
                                  Navigator.of(context).pop(context);
                                  //alert dialog show gotta close by the following codes end
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                    //alert message boshbe end ============================
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Details")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              //===================the size button=======================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    //alert message boshbe start ========================
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Make a contact"),
                            content: new Text("Phone nunber provided"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  //alert dialog show gotta close by the following codes start
                                  Navigator.of(context).pop(context);
                                  //alert dialog show gotta close by the following codes end
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                    //alert message boshbe end ============================
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Contact")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //============================the first button row end=======================
          //============================the second row  buttons=======================

          Row(
            children: <Widget>[
              //===================the size button=======================
              Expanded(
                child: MaterialButton(
                    onPressed: () {
                      //alert message boshbe start ========================
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Make a contact"),
                              content: new Text("Phone nunber provided"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    //alert dialog show gotta close by the following codes start
                                    Navigator.of(context).pop(context);
                                    //alert dialog show gotta close by the following codes end
                                  },
                                  child: new Text("close"),
                                )
                              ],
                            );
                          });
                      //alert message boshbe end ============================
                    },
                    color: Colors.amberAccent,
                    textColor: Colors.white,
                    child: new Text("Make a contact")),
              ),

              new IconButton(
                  onPressed: () {
                    //alert message boshbe start ========================
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Make a contact"),
                            content: new Text("Phone nunber provided"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  //alert dialog show gotta close by the following codes start
                                  Navigator.of(context).pop(context);
                                  //alert dialog show gotta close by the following codes end
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                    //alert message boshbe end ============================
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  )),
              new IconButton(
                  onPressed: () {
                    //alert message boshbe start ========================
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Make a contact"),
                            content: new Text("Phone nunber provided"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  //alert dialog show gotta close by the following codes start
                                  Navigator.of(context).pop(context);
                                  //alert dialog show gotta close by the following codes end
                                },
                                child: new Text("close"),
                              )
                            ],
                          );
                        });
                    //alert message boshbe end ============================
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
            ],
          ),

          //============================the second row  buttons ends =======================
          //==========================and new devider starts ===============================
          Divider(),
          new ListTile(
            title: new Text("Details"),
            subtitle: new Text(
                "fjgndfjdlfkjlkijgisdfhgiuvsnhugvdsuyhgviudbhfviudbuygfuysgvfuygbu"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5.0, 5.0, 5.0),
                child: new Text(
                  "Name",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_name),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5.0, 5.0, 5.0),
                child: new Text(
                  "Company",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_name),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5.0, 5.0, 5.0),
                child: new Text(
                  "Deal condition",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_name),
              )
            ],
          ),
          //=============================similar searches prod item initialize ==========================
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("People Also Searches",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
          ),
          Container(
            height: 360,
            child: Similar_products(),
          )
          //=============================similar searches prod item initialize ==========================end
        ],
      ),
    );
  }
}

//=====================================start 0f similar searches engine=====================###################
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    //=============this is our product list=============
    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
    },
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

    {
      "name": "Item 1",
      "picture": 'images/restaurants.jpg',
      "rating": 4.7,
      "price": 78000,
    },
    {
      "name": "Item 2",
      "picture": 'images/buses.jpg',
      "rating": 4.9,
      "price": 7878000,
    },

    //product list close by here .
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_searces_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_rating: product_list[index]['rating'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

/////////////////product details class/////////
class Similar_searces_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_rating;
  final prod_price;

  Similar_searces_prod({
    this.product_name,
    this.prod_picture,
    this.prod_rating,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
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
                header: Text(
                  'Click to make strategy',
                  style: TextStyle(
                      color: Colors.amberAccent, fontWeight: FontWeight.w800),
                ),
                footer: Container(
                  color: Colors.white60,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}

//=====================================start 0f similar searches engine=====================###################end
