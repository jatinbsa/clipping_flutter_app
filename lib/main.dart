import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Clipping App',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

               new ClipPath(
                child: new Image.network("https://tineye.com/images/widgets/mona.jpg"),
                clipper: new MyClipper(),
               ),


        ],

      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=new Path();
    path.lineTo(0.0,size.height);
    path.lineTo(size.width,0.0);
    path.close();
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>false;

}


