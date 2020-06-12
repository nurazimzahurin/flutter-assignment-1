import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  ProductCard({this.image, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Card(
        elevation: 2,
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                image,
                width: double.infinity,
                height: 70,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    price,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
