import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/Homepage/HomePage.dart';
import 'package:totersproject/totersproject/OrdersPage2.dart';
import 'package:totersproject/totersproject/profile.dart';
import 'package:totersproject/totersproject/search.dart';

class butler extends StatefulWidget {
  const butler({Key? key}) : super(key: key);

  @override
  State<butler> createState() => _butlerState();
}

class _butlerState extends State<butler> {
  int _selected = 2;
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
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            color: Color(0xff00b28e),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "We delivre anything that fits on a\n motorbike! ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child:  Text(
            "Request a butler to:",
            style: TextStyle(fontSize: 18),
          ),
          ),


        But("images/img_14.png","Deliver your stuff"),
          But("images/img_13.png","Buy something"),
        ],
      ),
    );
  }
  Widget But(String img , String text){
    return     Padding(
      padding: EdgeInsets.only(left: 20,top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(blurRadius: 0.2, color: Colors.grey.shade500)
              ],
              color: Colors.grey.shade200,
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15),

                  child:     Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text,style: TextStyle(fontSize: 15,color: Color(0xff00b28e)),),
                      SizedBox(
                        height: 5,
                      ),
                      Text("e.g. simply dummy text of the printing  \nthe printing  and typeset tingdummy \nindustry.",style: TextStyle(fontSize: 12,color:Colors.black45)),
                    ],
                  ),

                ),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage(img),width: 90,height: 90,),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xff00b28e),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
