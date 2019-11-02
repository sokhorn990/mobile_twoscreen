import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Home"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.message),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.favorite),
          backgroundColor: Colors.pink,
          onPressed: (){

          Navigator.pop(context);
          },
        ),
        // body: Center(      
        //     // child: CircularProgressIndicator(),
        //     ),
        body: TabBarView(
          children: <Widget>[
            Image.network("http://www.kinyu-z.net/data/wallpapers/119/1119175.jpg",fit: BoxFit.cover,),
            Image.network("http://hdwarena.com/wp-content/uploads/2016/12/Nice-Natural-Wallpaper.jpg",fit: BoxFit.cover,),
            Image.network("https://images.pexels.com/photos/236047/pexels-photo-236047.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",fit: BoxFit.cover,)
          ],
        ),
      ),
      
    );
  }
}
