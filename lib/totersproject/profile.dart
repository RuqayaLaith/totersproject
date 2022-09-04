import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/Butlerpage.dart';
import 'package:totersproject/totersproject/Homepage/HomePage.dart';
import 'package:totersproject/totersproject/OrdersPage2.dart';
import 'package:totersproject/totersproject/search.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int _selected = 4;
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
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screens[index]));
          });
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Ruqaya Laith",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 23),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: Color(0xff00b28e),
                          size: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Green",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              ". Pts",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff00b28e),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.3,
                width: MediaQuery.of(context).size.width * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey.shade100,
                          ),
                          child: Icon(
                            Icons.manage_accounts_outlined,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey.shade100,
                          ),
                          child: Icon(
                            Icons.headset_mic_outlined,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Support",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey.shade100,
                          ),
                          child: Icon(
                            Icons.payment,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.grey.shade100,
                              ),
                              child: Icon(
                                Icons.language_sharp,
                                color: Colors.grey,
                                size: 35,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.5)),
                                      color: Color(0xff00b28e),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "En",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Language",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.60,
                width: MediaQuery.of(context).size.width * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Toters Cash",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_up,
                          color: Color(0xff00b28e),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Icon(
                                  Icons.account_balance_wallet_outlined,
                                  size: 35,
                                  color: Colors.grey,
                                )),
                            Text(
                              "Wallet",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "IQD 0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                      color: Color(0xff00b28e)),
                                ))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.add,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Add Funds",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.call_made_rounded,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Send Funds",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.43,
                width: MediaQuery.of(context).size.width * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Promotions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Icon(
                                  Icons.percent,
                                  size: 30,
                                  color: Colors.grey,
                                )),
                            Text(
                              "Credits",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "IQD 0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                      color: Color(0xff00b28e)),
                                ))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.local_offer_outlined,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Add Promo Code",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.94,
                width: MediaQuery.of(context).size.width * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Account details",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              Icons.notifications_none,
                              size: 35,
                              color: Colors.grey,
                            )),
                        Text(
                          "Notifications",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Addresses",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Favorites",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.multiple_stop,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Prefences",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.transcribe_outlined,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Refer a Friend",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.77,
                width: MediaQuery.of(context).size.width * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Help Center",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              Icons.headset_mic_outlined,
                              size: 35,
                              color: Colors.grey,
                            )),
                        Text(
                          "Get Support",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.message_outlined,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Support Tickets",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.handyman,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Legal",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 2,
                      color: Colors.grey.shade200,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.question_mark_rounded,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "FAQ",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(
                            Icons.logout,
                            color: Colors.red,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Sign out",
                          style: TextStyle(fontSize: 25, color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
