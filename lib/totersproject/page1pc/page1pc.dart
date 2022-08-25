import 'package:flutter/material.dart';

class page1pc extends StatefulWidget {
  final String image;
  final String namef;
  final String meal;
  final String number;
  final String mins;
  final String minal;
  final String nu1;
  final String nu2;
  final String elavuatin;
  page1pc({
    required this.image,
    required this.namef,
    required this.meal,
    required this.number,
    required this.mins,
    required this.minal,
    required this.nu1,
    required this.nu2,
    required this.elavuatin,
  });

  @override
  State<page1pc> createState() => _page1pcState();
}

class _page1pcState extends State<page1pc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.image),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 420, left: 300),
                height: 50,
                width: 75,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 2)],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          (widget.number),
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          (widget.mins),
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  (widget.namef),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10, bottom: 15),
                child: Text(
                  (widget.meal),
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
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
                              (widget.minal),
                              style: TextStyle(fontSize: 15, color: Colors.red),
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
                              (widget.nu1),
                              style: TextStyle(
                                  fontSize: 15, color: Colors.blueAccent),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      widget.nu2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xff00b28e),
                            size: 40,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff00b28e),
                            size: 40,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff00b28e),
                            size: 40,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff00b28e),
                            size: 40,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff00b28e),
                            size: 40,
                          ),
                        ],
                      ),
                      Text(
                        widget.elavuatin,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60, top: 20),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xff00b28e),
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  width: 375,
                  height: 1.5,
                  color: Colors.grey.shade300,
                ),
              ),
              comment("name", "Comments...")
            ],
          ),
        ],
      ),
    );
  }

  Widget comment(String name, String Comments) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                (name),
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.star,
              size: 20,
              color: Color(0xff00b28e),
            ),
            Icon(
              Icons.star,
              size: 20,
              color: Color(0xff00b28e),
            ),
            Icon(
              Icons.star,
              size: 20,
              color: Color(0xff00b28e),
            ),
            Icon(
              Icons.star,
              size: 20,
              color: Color(0xff00b28e),
            ),
            Icon(
              Icons.star,
              size: 20,
              color: Color(0xff00b28e),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              Comments,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            )),
      ],
    );
  }
}
