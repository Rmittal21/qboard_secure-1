import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qboard_secure/loginPage.dart';
import 'welcomePage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.blueGrey[900],
                      Colors.blueGrey,
                      Colors.white60
                    ]
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Sign-Up ", style: TextStyle(color: Colors.white, fontSize: 40),),
                      SizedBox(height: 10),
                      Text("To The World of Secrets", style: TextStyle(color: Colors.white, fontSize: 10),),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height:60,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.3),
                                          blurRadius: 20,
                                          offset: Offset(0, 10)
                                      )]
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Email or Phone Number",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              border: InputBorder.none
                                          ),
                                        ),
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Passcode",
                                                hintStyle: TextStyle(color: Colors.grey),
                                                border: InputBorder.none
                                            ),
                                          )
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40,),
                                Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
                                SizedBox(height: 40,),
                                Container(
                                  child: RaisedButton(
                                    color: Colors.blueGrey[900],
                                    child: Center(
                                      child: Text("Sign-Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 50),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                                    },
                                  ),
                                ),
                                SizedBox(height: 50,),
                                Text("Continue with social media?", style: TextStyle(color: Colors.grey),),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.blue
                                        ),
                                        child: Center(
                                          child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 30,),
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.deepPurple[900],
                                        ),
                                        child: Center(
                                          child: Text("facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                        )
                    )
                )

              ],
            )
        )
    );
  }
}