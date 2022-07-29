import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // ekhane multiple horizontal listview ash
          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),

          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),

          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),

          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),
          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),
          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),
          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),
          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),
          Category(
            // new item ekhane boshbe
            image_location: 'images/hotes.jpg',
            image_Caption: 'item 1',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_Caption;

  Category({required this.image_location, required this.image_Caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 140.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 100.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_Caption,
                  style: new TextStyle(color: Colors.green),
                ),
              )),
        ),
      ),
    );
  }
}
