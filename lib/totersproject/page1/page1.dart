import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/data/data.dart';
import 'package:totersproject/totersproject/page1pc/page1pc.dart';
import 'package:totersproject/totersproject/page2/page2.dart';

class page1 extends StatefulWidget {
  @override
  State<page1> createState() => _page1State();
}

int selected = 3;
List<Widget> screens = [
  page1(),
  page2(),
];

class _page1State extends State<page1> {
  get primaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          actions: [
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "توصيل الى",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Text(
                          "بغداد,العراق",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            )
          ],
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_road,
                color: Colors.black45,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications_none_sharp,
                color: Colors.black45,
                size: 20,
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
            ),
            label: ("الحساب"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.request_quote_outlined,
            ),
            label: 'الطلبات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
            ),
            label: 'المحفظة',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ('الرئيسية'),
          ),
        ],
        selectedItemColor: Color(0xff00b28e),
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 32),
        unselectedIconTheme: IconThemeData(size: 30),
        selectedLabelStyle: TextStyle(fontSize: 16, color: primaryColor),
        unselectedLabelStyle: TextStyle(fontSize: 14, color: primaryColor),
        currentIndex: selected,
        onTap: (index) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page2()));
        },
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "سجل الدخول باستخدام تطبيق",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    img(
                      img1,
                      name1,
                      text1,
                      num1,
                      mins,
                      cans,
                      earn,
                      num2,
                      based,
                    ),
                    img(img2, name2, text1, num1, mins, cans, earn, num2,
                        based),
                    img(img3, name3, text1, num1, mins, cans, earn, num2,
                        based),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  photo(img1, name1),
                  photo(img2, name2),
                  photo(img3, name3),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  photo(img1, name1),
                  photo(img2, name2),
                  photo(img3, name3),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            height: 7,
            color: Colors.grey.shade200,
          ),
          Column(
            children: [
              text(),
            ],
          )
        ],
      ),
    );
  }

  Widget img(String pc, String namef, String meal, String number, String mins,
      String minal, String nu1, String nu2, String elavuatin) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => page1pc(
                    image: pc,
                    namef: namef,
                    meal: meal,
                    number: number,
                    mins: mins,
                    minal: minal,
                    nu1: nu1,
                    nu2: nu2,
                    elavuatin: elavuatin)));
          },
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                height: 200,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage((pc)),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 170, left: 280),
                height: 50,
                width: 75,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 5)],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          (number),
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          (mins),
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Column()
      ],
    );
  }

  Widget photo(String img, String food) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(img),
                        )),
                  ),
                  Text(
                    (food),
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget text() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xff00b28e),
            size: 20,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 10),

              child: Text(
                "خصومات جماعية",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              // child: Text("احصل على خصم 50% ",style: TextStyle(fontSize: 14,color: Colors.grey),)
            ),
            Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  "احصل على خصم 50% ",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                )),
          ],
        ),
      ],
    );
  }
}
