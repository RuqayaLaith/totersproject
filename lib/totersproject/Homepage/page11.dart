import 'package:flutter/material.dart';
class page11 extends StatefulWidget {
  const page11({Key? key}) : super(key: key);

  @override
  State<page11> createState() => _page11State();
}

class _page11State extends State<page11> {
  String radioitem=" ";
  bool radioitem1=true;
  bool radioitem2=true;
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Row(
            children: [
              Icon(Icons.share,size: 25,color: Colors.black,),
              Icon(Icons.favorite_border,size: 25,color: Colors.black,),

            ],
          )
        ],
        leading: Icon(Icons.close,size: 25,color: Colors.black,),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
               height:MediaQuery.of(context).size.width*0.70,
                width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage("https://i.ytimg.com/vi/beqZDcmBiyo/hqdefault.jpg"),
  ),
),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.only(left: 10),
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text("Chicken Madfoun Platter ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("typesetting industry. Lorem Ipsum has been the industry's. ",style: TextStyle(

                    color: Colors.grey.shade400,
                    fontSize: 20,
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("IQD 13,000 ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                    fontSize: 20,
                  ),)

                ],
              ),),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 9,
                  width:MediaQuery.of(context).size.width ,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 10,

              ),
              Padding(padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Text("Chicken Madfoun  ",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),),
                ],
              ),

              ),


              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  RadioListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      ),
                      tileColor: Colors.grey.shade200,
                      title: Text("Half",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),value: "value", groupValue: radioitem, onChanged: (val){
                    setState(() {
                      radioitem="$val";
                    });
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  RadioListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      ),
                      tileColor: Colors.grey.shade200,
                      title: Text("whole",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      value: "value1", groupValue: radioitem, onChanged: (val){
                    setState(() {
                      radioitem="$val";
                    });
                  }),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  CheckboxListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      ),
                      tileColor: Colors.grey.shade200,
                      title: Text("whole",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      value: radioitem1, onChanged: (Value){
                    setState(() {
                      radioitem1=Value!;
                    });
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  CheckboxListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                      ),
                      tileColor: Colors.grey.shade200,
                      title: Text("whole",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      value: radioitem2, onChanged: (Value1){
                    setState(() {
                      radioitem2=Value1!;
                    });
                  }),

                ],
              ),

            ],
          ),
        ],
      ),




    );
  }
}
