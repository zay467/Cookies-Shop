import 'package:cookie_shop/pages/CookiePage.dart';
import 'package:cookie_shop/widgets/BottomBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
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
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Categories",
            style: TextStyle(
                fontSize: 42.0,
                fontFamily: "Valera",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xffC88D67),
            unselectedLabelColor: Color(0xffCDCDCD),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            tabs: [
              Tab(
                child: Text(
                  "Cookies",
                  style: TextStyle(fontFamily: "Valera", fontSize: 21),
                ),
              ),
              Tab(
                child: Text(
                  "Cookies Cake",
                  style: TextStyle(fontFamily: "Valera", fontSize: 21),
                ),
              ),
              Tab(
                child: Text(
                  "Ice cream",
                  style: TextStyle(fontFamily: "Valera", fontSize: 21),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 270,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [CookiePage(), CookiePage(), CookiePage()],
            ),
          )
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
