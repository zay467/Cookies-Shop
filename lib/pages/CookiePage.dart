import 'package:cookie_shop/pages/CookieDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFAF8),
      // backgroundColor: Colors.red,
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 270,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: [
                _buildCard('Cookie mint', '\$3.99', 'assets/cookiemint.jpg',
                    false, false, context),
                _buildCard('Cookie cream', '\$5.99', 'assets/cookiecream.jpg',
                    true, false, context),
                _buildCard('Cookie classic', '\$1.99',
                    'assets/cookieclassic.jpg', false, true, context),
                _buildCard('Cookie choco', '\$2.99', 'assets/cookiechoco.jpg',
                    false, false, context),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imagePath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => CookieDetail(
                assetPath: imagePath,
                cookiename: name,
                cookieprice: price,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite
                        ? Icon(Icons.favorite, color: Color(0xffEF7532))
                        : Icon(
                            Icons.favorite_border,
                            color: Color(0xffEF7532),
                          )
                  ],
                ),
              ),
              Hero(
                tag: imagePath,
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.contain),
                  ),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                price,
                style: TextStyle(
                  color: Color(0xffCC8053),
                  fontSize: 14,
                  fontFamily: "Varela",
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xff575E67),
                  fontSize: 14,
                  fontFamily: "Varela",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xffEBEBEB),
                  height: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xffD17E50),
                        size: 12,
                      ),
                      Text(
                        "Add to cart",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Varela",
                          color: Color(0xffD17E50),
                        ),
                      )
                    ],
                    if (added) ...[
                      Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xffD17E50),
                        size: 12,
                      ),
                      Text(
                        "3",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Varela",
                            color: Color(0xffD17E50),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0xffD17E50),
                        size: 12,
                      ),
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
