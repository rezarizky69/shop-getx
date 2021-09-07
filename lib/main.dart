import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_getx/views/diorpage.dart';
import 'package:flutter_shop_getx/views/homepage.dart';
import 'package:flutter_shop_getx/views/lorealpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedpage = 0; //initial value

  final _pageOptions = [
    HomePage(),
    DiorPage(),
    LorealPage()
  ]; // listing of all 3 pages index wise

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[
          selectedpage], // initial value is 0 so HomePage will be shown
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        buttonBackgroundColor: Colors.pinkAccent,
        backgroundColor: Colors.transparent,
        color: Colors.pinkAccent,
        animationCurve: Curves.linearToEaseOut,
        items: <Widget>[
          Icon(
            Icons.money,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_giftcard,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_travel,
            size: 25,
            color: Colors.white,
          )
        ],
        onTap: (index) {
          setState(() {
            selectedpage =
                index; // changing selected page as per bar index selected by the user
          });
        },
      ),
    );
  }
}
