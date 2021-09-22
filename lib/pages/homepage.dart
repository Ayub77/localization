import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class HomePage extends StatefulWidget {
 

    static final String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(child: Text('welcome',style: TextStyle(fontSize: 30),).tr()),
            SizedBox(height: 250,),
            Row(
              children: [
                Expanded(
                  child:Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                     borderRadius: BorderRadius.circular(30)
                    ),
                    child: FlatButton(onPressed: (){

                        context.locale = Locale('en', 'US');

                    },child: Text("english",style: TextStyle(color: Colors.white,fontSize: 25),)
                     ),
                  )
                   ),
                   SizedBox(width: 10,),
                   Expanded(
                  child:Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                     borderRadius: BorderRadius.circular(30)
                    ),
                    child: FlatButton(onPressed: (){
                        
                        context.locale = Locale('ru', 'RU');
                    },
                     child: Text("russian",style: TextStyle(color: Colors.white,fontSize: 25),)
                     ),
                  )
                   ),
                   SizedBox(width: 10,),
                  Expanded(child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: FlatButton(onPressed: (){

                         context.locale = Locale('uz', 'UZ');
                      }, child: Text("uzbek",style: TextStyle(color: Colors.white,fontSize: 25),)
                      ),
                  )
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Container(
                     height: 60,
                      decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: FlatButton(onPressed: (){

                         context.locale = Locale('fr', 'FR');
                      }, child: Text("french",style: TextStyle(color: Colors.white,fontSize: 25),)
                      ),
                  ))
              ],
            )            

          ],
        ),
      ),
    );
  }
}