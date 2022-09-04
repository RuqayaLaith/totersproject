import 'package:flutter/material.dart';
class indecrement extends StatefulWidget {
  const indecrement({Key? key}) : super(key: key);

  @override
  State<indecrement> createState() => _indecrementState();
}

class _indecrementState extends State<indecrement> {
  int num = 1;
  int price = 6500;

  get primaryColor => null;
  @override  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.44,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://th.bing.com/th/id/R.a79abc90faa2da8c191430a513df2972?rik=sCskAbg3RUJswg&pid=ImgRaw&r=0"),
          )),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            margin: EdgeInsets.only(top: 25, left: 350),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),

            child: Icon(
              Icons.arrow_forward,
              size: 25,
            ),
          ),

        ),

        Container(
          margin: EdgeInsets.only(top: 100),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 20,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Chicken ",
                          style: TextStyle(color: Colors.red, fontSize: 25),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                "جيد جدا",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),

                            Icon(
                              Icons.emoji_emotions_outlined,
                              size: 20,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 35),
                                  child: Text(
                                    "سعر التوصيل:1,500",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Text(
                                  "د.ع",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.delivery_dining_outlined,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30, left: 10),
                              child: Text(
                                " :الحد الادنى للطلب",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(
                              "د.ع 500",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "المنصور",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: Colors.black54,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "وقت توصيل المتوقع من نصف ساعة الى ساعة",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Icon(
                          Icons.access_time_rounded,
                          size: 20,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "ستربس دجاج",
                          style: TextStyle(color: Colors.red, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                    ),
                    child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_upward_outlined,
                              size: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "اضافات",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 23),
                                ),
                                Text(
                                  "اختياري",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "تعليمات خاصة",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300,
                    ),
                    child: ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "اذا كانت لديك اي ملاحظات تخص الطلب اذا كانت\n اذا كانت لديك اي ملاحظات تخص الطلب اذا كانت",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              num++;
                              price = price + 6500;
                            });
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey.shade300,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 30,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey.shade300,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "$num",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        num > 0
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num--;
                                    price = price - 6500;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.grey.shade300,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.minimize,
                                            color: Colors.black,
                                            size: 30,
                                          )
                                        ],
                                      )),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              "$price د.ع ",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.redAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red.shade500,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "اضافة الى السلة",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
