import 'package:flutter/material.dart';
import 'package:totersproject/totersproject/page1/page1.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
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



                )


            ),

         child:  GestureDetector(
           onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => page1()));
           },

         ),
          ),
        )



    );
  }
}
