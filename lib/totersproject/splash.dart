import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/Homepage/HomePage.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async {
    await new Future.delayed(const Duration(seconds: 4));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
  @override
  void initState() {
    super.initState();
    Delay();
  }

    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00b28e),
      body:Center(
        child:Container(
          width: 250,height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/img..png"),

              )),
        ),
      )

    );
  }
}
