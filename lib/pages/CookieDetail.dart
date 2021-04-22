import 'package:cookie_shop/widgets/BottomBar.dart';
import 'package:flutter/material.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  CookieDetail({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff545D68),
          ),
        ),
        title: Text(
          "Pickup",
          style: TextStyle(
            fontFamily: "Varela",
            fontSize: 20.0,
            color: Color(0xff545D68),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xff545D68),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cookies",
              style: TextStyle(
                fontSize: 42.0,
                fontFamily: "Valera",
                fontWeight: FontWeight.bold,
                color: Color(0xffF17532),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Hero(
            tag: assetPath,
            child: Image.asset(
              assetPath,
              height: 150,
              width: 100,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              cookieprice,
              style: TextStyle(
                fontFamily: "Varela",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xffF17532),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                fontFamily: "Varela",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff575E67),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                  'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: FlatButton(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFFF17532)),
                child: Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
