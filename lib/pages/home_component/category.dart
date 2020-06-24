import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 20, 0),
              child: SizedBox(
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('images/clothes.png', height: 30,),
                            SizedBox(height: 2,),
                            Text('Clothing', style: TextStyle(color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('images/Beauty.png', height: 30,),
                            SizedBox(height: 2,),
                            Text('Beauty', style: TextStyle(color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('images/shoe.png', height: 30,),
                            SizedBox(height: 2,),
                            Text('Shoes', style: TextStyle(color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('images/component.png', height: 30,),
                            SizedBox(height: 2,),
                            Text('Electronics', style: TextStyle(color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('images/arrow.png', height: 30,),
                            SizedBox(height: 2,),
                            Text('See ll', style: TextStyle(color: Colors.grey, fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                    shadowColor: Colors.grey,
                    elevation: 1,
                  ),
                  width: double.infinity,
                  height: 80),
            );
  }
}