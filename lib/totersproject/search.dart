import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/Butlerpage.dart';
import 'package:totersproject/totersproject/Homepage/HomePage.dart';
import 'package:totersproject/totersproject/OrdersPage2.dart';
import 'package:totersproject/totersproject/profile.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  int _selected = 1;
  List<Widget> screens = [
    HomePage(),
    search(),
    butler(),
    orders(),
    profile(),
  ];
  int selected = 0;

  List<String> images = [
    "images/img.png",
    "images/img_1.png",
    "images/img_2.png",
    "images/img_3.png",
    "images/img.png",
    "images/img_1.png",
    "images/img_2.png",
    "images/img_3.png",
  ];
  List<String> Texts = [
    "Happy Hour 🤩",
    "Weekly Discounts 🗓",
    "Cashback 💰",
    "Try & Save 🤑",
    "Happy Hour 🤩",
    "Weekly Discounts 🗓",
    "Cashback 💰",
    "Try & Save 🤑",
  ];
  List<String> Texts2 = [
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
    "Get happy with up to 50% OFF from \n select stores befor 7 PM!",
  ];
  List<String> Texts3 = [
    "54 Stores",
    "79 Stores",
    "30 Stores",
    "84 Stores",
    "54 Stores",
    "79 Stores",
    "30 Stores",
    "84 Stores",
  ];
  get primaryColor => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            ), label: 'Butler',
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
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screens[index]));
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        title: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
            hintText: "Search for store or item",
            hintStyle: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.24,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff00b28e),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage("images/im2.png")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Order Anything!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Text(
                                "New on Toters! If it fits on a motorbike we \n can deliver it.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    store(images[0], Texts[0], Texts2[0], Texts3[0]),
                    store(images[1], Texts[1], Texts2[1], Texts3[1]),
                    store(images[2], Texts[2], Texts2[2], Texts3[2]),
                    store(images[3], Texts[3], Texts2[3], Texts3[3]),
                    store(images[4], Texts[4], Texts2[4], Texts3[4]),
                    store(images[5], Texts[5], Texts2[5], Texts3[5]),
                    store(images[6], Texts[6], Texts2[6], Texts3[6]),
                    store(images[7], Texts[7], Texts2[7], Texts3[7]),

                    // SizedBox(
                    //     height:MediaQuery.of(context).size.height,
                    //
                    //     child: ListView.builder(
                    //
                    //       itemCount: 8,
                    //       itemBuilder: (BuildContext context, int index) {
                    //         return store(images[index], Texts[index],Texts2[index],Texts3[index]);
                    //       },
                    //     )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget store(String img, String text, String text2, String text3) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.43,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade300,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text2,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text3,
                style: TextStyle(fontSize: 12, color: Color(0xff00b28e)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
