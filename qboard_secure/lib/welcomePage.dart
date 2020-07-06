import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'SignupPage.dart';
class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
              new RaisedButton(
                color: Colors.blueGrey[900],
                child: Center(
                  child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
              ),
              new RaisedButton(
                color: Colors.blueGrey[900],
                child: Center(
                  child: Text("Sign-Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                },
              ),
            ]
            )
        )
      ),

      //bottomNavigationBar: _getNavBar(context),

    );
  }
}
//_getNavBar(context){
//  return Stack(
//    children: <Widget>[
//
//    Positioned(
//      bottom: 0,
//      child: ClipPath(
//        clipper: NavBarClipper(),
//        child: Container(
//          height: 60,
//          width: MediaQuery.of(context).size.width,
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              begin: Alignment.topCenter,
//              colors: [
//                Colors.blueGrey[900],
//                Colors.blueGrey.shade900,
//              ]
//            )
//          )
//        ),
//      )
//    ),
//    Positioned(
//      bottom: 45,
//      width: MediaQuery.of(context).size.width,
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          _buildNavItem(Icons.mail_outline, false),
//          SizedBox(width: 1,),
//          _buildNavItem(Icons.landscape, true),
//          SizedBox(width: 1,),
//          _buildNavItem(Icons.email, false),
//        ]
//      )
//    ),
//    Positioned(
//      bottom: 10,
//      width: MediaQuery.of(context).size.width,
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          Text('Sign-Up', style: TextStyle(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w500),),
//          SizedBox(width: 1,),
//          Text('Slideshow', style: TextStyle(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w500),),
//          SizedBox(width: 1,),
//          Text('Log-in', style: TextStyle(color: Colors.white.withOpacity(0.9), fontWeight: FontWeight.w500),),
//          SizedBox(width: 1,),m
//        ],
//      ),
//    )
//  ],
//  );
//}

_buildNavItem(IconData icon, bool active){
  return CircleAvatar(
     radius: 30,
      backgroundColor: Colors.blueGrey.shade900,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: active? Colors.white.withOpacity(0.9) : Colors.transparent,
        child: Icon(icon, color: active? Colors.black : Colors.white.withOpacity(0.9),),
      )
  );
}

class NavBarClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo(
        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo(
        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
  }