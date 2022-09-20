import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ma3lam/models/places.dart';

class MyPlace extends StatelessWidget {
  const MyPlace({Key? key, required this.place});

  final Places place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(place.placeName), backgroundColor: Colors.blueGrey[300]),
      body: Column(
        children: [
          Image.network(
            place.placeUrl,
          ),
          Container(
            height: 15,
          ),
          Text(
            place.placeName,
            style: TextStyle(fontSize: 30, color: Colors.blueGrey[300]),
          ),
          Container(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Text(
              place.description,
              style: TextStyle(fontSize: 15, color: Colors.blueGrey[300]),
            ),
          )
        ],
      ),
    );
  }
}
