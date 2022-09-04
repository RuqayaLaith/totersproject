import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/Butlerpage.dart';
import 'package:totersproject/totersproject/Homepage/HomePage.dart';
import 'package:totersproject/totersproject/profile.dart';
import 'package:totersproject/totersproject/search.dart';

class orders extends StatefulWidget {
  const orders({Key? key}) : super(key: key);

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  int _selected = 3;
  List<Widget> screens = [
    HomePage(),
    search(),
    butler(),
    orders(),
    profile(),
  ];
  get primaryColor => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Past Orders",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Upcoming",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/img_4.png")),
                Text(
                  "You do not have any past orders!",
                  style: TextStyle(fontSize: 20, color: Color(0xff00b28e)),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/img_4.png")),
                Text("No upcoming orders",
                    style: TextStyle(fontSize: 20, color: Color(0xff00b28e)))
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
              ),
            label: 'Butler',
          ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
              ),
              label: ("Account"),
            ),
          ],
          selectedItemColor: Color(0xff00b28e),
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(size: 32),
          unselectedIconTheme: IconThemeData(size: 30),
          selectedLabelStyle: TextStyle(fontSize: 16, color: primaryColor),
          unselectedLabelStyle: TextStyle(fontSize: 14, color: primaryColor),
          currentIndex: _selected,
          onTap: (index) {
            setState(() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => screens[index]));
            });
          },
        ),
      ),
    );
  }
}
