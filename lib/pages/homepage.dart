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
            Center(child: Text('Flutter',style: TextStyle(fontSize: 30),).tr()),
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

                    },child: Text("English",style: TextStyle(color: Colors.white,fontSize: 25),)
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
                        
                        context.locale = Locale('ko', 'KO');
                    },
                     child: Text("Korean",style: TextStyle(color: Colors.white,fontSize: 25),)
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

                         context.locale = Locale('ja', 'JP');
                      }, child: Text("Japanese",style: TextStyle(color: Colors.white,fontSize: 25),)
                      ),
                  )
                  ),
                  
              ],
            )            

          ],
        ),
      ),
    );
  }
}