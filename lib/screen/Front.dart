import 'package:flutter/material.dart';
import 'package:mobile_twoscreen/screen/Home.dart';

class Front extends StatefulWidget {
  @override
  _FrontState createState() => _FrontState();
}

class _FrontState extends State<Front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.network(
              "https://tse1.mm.bing.net/th?id=OIP.CqoatAwvwR_Tk4upIfCSOgHaJ4&pid=Api&P=0&w=300&h=300",
              fit: BoxFit.cover,
              height: 800.0,
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text(
                "Welcom",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
