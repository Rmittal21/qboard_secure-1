import 'package:flutter/material.dart';
import 'loginPage.dart';
class LogsAndInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Logs and Floating widget Button'), backgroundColor:Colors.blueGrey[900],),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           new RaisedButton(
            color: Colors.blueGrey[900],
            child: Center(
              child: Text("Floating Widget", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
          ),
        ],
        ),
      )
    );
  }
}
