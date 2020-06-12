import 'package:flutter/material.dart';
import 'package:training_assignment_1/menus/nav_bar.dart';
import 'package:training_assignment_1/pages/home_component/category.dart';
import 'package:training_assignment_1/pages/home_component/product.dart';
import 'package:training_assignment_1/pages/home_component/promotion.dart';
import 'package:training_assignment_1/pages/home_component/title.dart';
import 'package:training_assignment_1/pages/home_component/top_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: newTopBar(),
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              TitleName(
                name: 'Categories',
              ),
              Category(),
              TitleName(name: 'Latest'),
              Promotion(),
              TitleName(name: 'Top Picks'),
              Product(),
            ],
          ),
        ),
        bottomNavigationBar: NavBar());
  }
}
