import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/Butlerpage.dart';
import 'package:totersproject/totersproject/OrdersPage2.dart';
import 'package:totersproject/totersproject/Homepage/data.dart';
import 'package:totersproject/totersproject/Homepage/page1pc.dart';
import 'package:totersproject/totersproject/profile.dart';
import 'package:totersproject/totersproject/search.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected = 0;
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
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications_none_sharp,
                      color: Colors.black45,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.add_road,
                      color: Colors.black45,
                      size: 20,
                    ),
                  ],
                )),
          ],
          leadingWidth: MediaQuery.of(context).size.width,
          leading: Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivering To",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Baghdad,Iraq",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  )
                ],
              ))),
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
      body: ListView(
        children: [
          SizedBox(
            height: 70,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Green",
                            style: TextStyle(
                                color: Color(0xff00b28e),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_circle_up,
                            color: Color(0xff00b28e),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          line(),
                          line(),
                          line(),
                          line(),
                          line(),
                          line(),
                          line(),
                          line(),
                          line(),
                          line(),
                          line(),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "10more orders by September 30 to reach Gold.",
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey.shade500),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Pts",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black45),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
          child:Column(
            children: [
    SizedBox(

      height: MediaQuery.of(context).size.width*0.44,
    child:  ListView(
    scrollDirection: Axis.horizontal,
    children: [


       Row(
        children: [
          Offers(of1),
          Offers(of2),
          Offers(of3),
          Offers(of4),

        ],
      ),

    ],
    ),),
            ],
          )

          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                photo("images/img_5.png", "Food"),


                  photo("images/img_6.png", "Fresh"),
                  photo("images/img_7.png", "Market"),
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
                  photo("images/img_8.png", "Shops"),
                  photo("images/img_9.png", "Rewards"),
                  photo("images/img_10.png", "Add Funds"),
                  photo("images/img_11.png", "Butler"),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 6,
            color: Colors.grey.shade200,
          ),

          Padding(padding: EdgeInsets.all(20),
          child:   Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( "Happy Hour 🤩", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(
                    height: 10,
                  ),
                  Text(   "Get happy with up to 50% OFF from select stores\n befor 7 PM!", style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined,size: 20,color:Color(0xff00b28e) ,)
            ],
          ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height*0.47,
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
          Padding(padding: EdgeInsets.all(20),
            child:   Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( "Weekly Discounts 🗓", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(   "Get happy with up to 50% OFF from select stores\n befor 7 PM!", style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_outlined,size: 20,color:Color(0xff00b28e) ,)
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.47,
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
          Padding(padding: EdgeInsets.all(20),
            child:   Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( "Cashback 💰", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(   "Get happy with up to 50% OFF from select stores\n befor 7 PM!", style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                Icon(Icons.arrow_forward_ios_outlined,size: 20,color:Color(0xff00b28e) ,)
              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height*0.47,
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
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }

  Widget img(String pc, String namef, String meal, String number, String mins,
      String minal, String nu1, String nu2, String elavuatin) {
    return Padding(padding: EdgeInsets.all(20),

    child:  Column(

      crossAxisAlignment: CrossAxisAlignment.start,
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
                      Icons.favorite_border_outlined,
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
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              (namef),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              ("\$ . Juices, Dessert"),
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                          color: Color(0xff00b28e),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ("4.9"),
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_offer_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        ("50% off"),
                        style: TextStyle(
                          fontSize: 15,  color: Colors.red,),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                 Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_backup_restore_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        (minal),
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.blueAccent,
                  ),
                  Text(
                    (nu1),
                    style: TextStyle(
                        fontSize: 15, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ],
        ),



      ],
    ),
    );

  }

  Widget photo(String img, String food) {
    return Stack(

        children: [
          Container(
            margin: EdgeInsets.all(5.0),
            height: 85,
            width: 85,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 4)],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
Padding(padding: EdgeInsets.only(left: 15,top: 10),
child: Column(

  children: [


    Image(image: AssetImage(img),width: 60,height: 60,),

    Text(
      (food),
      style: TextStyle(
        fontSize: 10,
        color: Colors.black,
      ),



    ),
  ],

),


)







        ],

    );
  }



  Widget line() {
    return  Padding(padding: EdgeInsets.only(right: 5),
    child:Container(
      width: 18,
      height: 3,
      color: Colors.grey.shade300,
    ),);
  }
  Widget Offers(String im){
    return Stack(
      children: [
        Padding(padding: EdgeInsets.only(right: 20),
        child:  Container(
          width: MediaQuery.of(context).size.width*0.86,
          height: MediaQuery.of(context).size.width*0.44,
          decoration: BoxDecoration(

            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage((im)),
              )
          ),
        )
        ),

      ],
    );
  }
}
