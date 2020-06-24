import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: SizedBox(
              height: 18,
              child: Image.asset('images/Home.png'),
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 9),
            )),
        BottomNavigationBarItem(
            icon: SizedBox(
              height: 18,
              child: Image.asset('images/Search.png'),
            ),
            title: Text(
              'Search',
              style: TextStyle(fontSize: 9),
            )),
        BottomNavigationBarItem(
            icon: SizedBox(
              height: 18,
              child: Image.asset('images/Cart.png'),
            ),
            title: Text(
              'Cart',
              style: TextStyle(fontSize: 9),
            )),
        BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                print('dah tekan');
                Navigator.of(context).pushNamed('/3');
              },
              child: SizedBox(
                height: 18,
                child: Image.asset('images/Profile.png'),
              ),
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 9),
            )),
        BottomNavigationBarItem(
            icon: SizedBox(
              height: 18,
              child: Image.asset('images/More.png'),
            ),
            title: Text(
              'More',
              style: TextStyle(fontSize: 9),
            )),
      ],
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
    );
  }
}
