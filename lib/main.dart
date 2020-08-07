import 'package:flutter/material.dart';
import 'animations_custom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Stack(
          children: [
            // Custom scrollview provides us a custom control over scroll view
            CustomScrollView(
              slivers: [
                // Sliverappbar is used to make a portion of screen scrollable and shrink when scrolled and get back the shape when rset.
                SliverAppBar(
                  expandedHeight: 450,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_412,c_fill,g_auto,h_412,ar_1:1/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F200617105143-emma-watson-little-women-120719.jpg"),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[
                              Colors.black,
                              Colors.black.withOpacity(0.3)
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FadeAnimation(
                                1.0,
                                Text(
                                  "Emma Watson",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  FadeAnimation(
                                    1.2,
                                    Text(
                                      "60 Videos",
                                      style: TextStyle(
                                        color:
                                            Colors.grey[300].withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  FadeAnimation(
                                    1.3,
                                    Text(
                                      "240K Followers",
                                      style: TextStyle(
                                        color:
                                            Colors.grey[300].withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // This will be having the list of all the items which won't be shrinked or expanded on scrolling
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          1.6,
                          Text(
                            "Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.",
                            style: TextStyle(height: 1.4, color: Colors.grey),
                          ),
                        ),
                        SizedBox(height: 30),
                        FadeAnimation(
                          1.6,
                          Text(
                            "Born",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        FadeAnimation(
                          1.6,
                          Text(
                            "April, 15th 1990, Paris, France",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        FadeAnimation(
                          1.6,
                          Text(
                            "Nationality",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        FadeAnimation(
                          1.6,
                          Text(
                            "British",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                          1.6,
                          Text(
                            "Videos",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              makeVideo(
                                  image:
                                      "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_412,c_fill,g_auto,h_412,ar_1:1/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F200617105143-emma-watson-little-women-120719.jpg"),
                              makeVideo(
                                  image:
                                      "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_412,c_fill,g_auto,h_412,ar_1:1/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F200617105143-emma-watson-little-women-120719.jpg"),
                              makeVideo(
                                  image:
                                      "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_412,c_fill,g_auto,h_412,ar_1:1/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F200617105143-emma-watson-little-women-120719.jpg"),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ]))
              ],
            ),
            Positioned.fill(
                bottom: 50,
                child: Container(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.amber),
                      child: Align(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(19, 5, 15, 5),
                          child: RaisedButton(
                            padding: EdgeInsets.all(10),
                            elevation: 0,
                            onPressed: () {},
                            color: Colors.amber,
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ));
  }

  Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.3)
          ])),
          child: Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}
