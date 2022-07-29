import 'package:flutter/material.dart';
//my imports
import 'package:revenau/componenets/Cartorwishlistproduct.dart';
class CartorWishlist extends StatefulWidget {


  @override
  _CartorWishlistState createState() => _CartorWishlistState();
}

class _CartorWishlistState extends State<CartorWishlist> {
  @override
  Widget build(BuildContext context) {
    //its going to return a scafold
    return Scaffold(
      //again the appbar from main.dart========================start
      appBar: new AppBar(
        // this codes removes the shadow of appbar
        elevation: 0.1,
        // this codes removes the shadow of appbar--
        backgroundColor: Colors.amberAccent,
        title: Text('Wishlist'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],
      ),
      //again the appbar from main.dart========================end
      //=========================body==============================
      body: new
      //Come from cartorwishlistproduct class name
      Cart_products(),
      //=========================body===============================end

      //=========================bottom navigatin bar ==================
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children:<Widget> [
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\$230"),
            )),
            Expanded(child: new MaterialButton(onPressed: (){},
            child: new Text("Check out",style: TextStyle(color: Colors.white),
            ),color: Colors.red,),
            )
          ],
        ),
      ),
      //===========================bottom navigatin bar=================end


    );
  }
}

