import 'package:flutter/material.dart';

class Home extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor:Colors.blue ,
        title: new Text("GO"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.send),
             onPressed:()=>debugPrint("Send Icon Tapped")),
          new IconButton(icon:new Icon(Icons.search),
           onPressed:()=> debugPrint(" search Icon Tapped"))
        ],
        ),
        backgroundColor:Colors.green,
        body: new Container(  
        alignment : Alignment.center,
          child :new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Hello",
                style : new TextStyle(
                  color:Colors.cyan,
                  fontSize: 40,
                  fontWeight: FontWeight.w900 )
              ),
              new InkWell(
                child :new Text(
                  "buttom"),
                  onTap:()=> debugPrint("Tapped buttom")
                
              )
            ],)
        ),
        bottomNavigationBar: new BottomNavigationBar(items:[
           new BottomNavigationBarItem(icon:new Icon(Icons.add),title: new Text("Hey")),
           new BottomNavigationBarItem(icon: new Icon(Icons.print),title:new Text("Print")),
           new BottomNavigationBarItem(icon: new Icon(Icons.call_missed),title: new Text("Hello"))
          
        ],  onTap :(int i) => debugPrint("Botton Tapped $i")
        
        ),

    ) ;
  }
  
}