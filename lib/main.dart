

import 'package:flutter/material.dart';
import 'package:quiz/Model/Data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i =0;

  String user = "" ;
  int cc = 0;
  int wc = 0;
  Color truebutton = Colors.white ;
  Color falsebuton = Colors.white ;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'To-Do App',
      home: Scaffold(appBar: AppBar(title: Center(
        child: Text("QUIZ",style: TextStyle(
          fontFamily: 'Schyler',
          fontSize: 50,fontWeight: FontWeight.w600
        ),),
      ),),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(padding: EdgeInsets.all(16.0), // Adjust padding as needed
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
                  ),child: Text(questionbank[i].question)
              ),
            ), SizedBox(height:20 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if(questionbank[i].answer==true)
                    {  truebutton=Colors.green;
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(truebutton),);
                    user= "answer was correct";
                      ++cc;

                    }
                    else{ user ="answer was false ";
                    print("True button pressed");++wc;
                    Color truebutton=Colors.redAccent;
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(truebutton),);}
                    (i<questionbank.length-1)?(setState(() {
                      ++i;
                      truebutton=Colors.white;

                    })):(setState(() {
                      i=0;
                    }));

                  },
                  child: Text("True"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if(questionbank[i].answer==false)
                    { user= "answer was correct";++cc;  truebutton=Colors.green;
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(truebutton),);}
                    else{ user ="answer was false ";
                    print("false button pressed");++wc;truebutton=Colors.redAccent;
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(truebutton),);}
                    (i<questionbank.length-1)?(setState(() {
                      ++i;
                      truebutton=Colors.white;
                    })):(setState(() {
                      i=0;
                    }));
                  },
                  child: Text("False"),
                ),

              ],
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),

              ),  width: 300.0,
              height: 50,
              child: Text(user),
            ),SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 300.0,
              height: 50,
              child: Text("Correct: $cc | Wrong: $wc"),
            )
          ],

        )
      ),
    );
  }
}


