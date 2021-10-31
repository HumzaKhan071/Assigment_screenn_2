// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow[50]),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    color: Colors.grey,
                    iconSize: 20,
                  ),
                  Expanded(
                      child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    onChanged: (value) {},
                    decoration: InputDecoration.collapsed(
                      hintText: "Search your food....",
                    ),
                    style: TextStyle(color: Colors.grey),
                  )),
                ],
              )),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            iconSize: 30,
            color: Colors.orange,
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange, width: 2)),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage("assets/profile-1.jpg"),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(60, 15, 15, 15),
            child: Column(
              children: [
                Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ap(AssetImage("assets/image-5.jpg"), "Pasta"),
                          pp(AssetImage("assets/image-6.jpg"), "Polska"),
                          ap(AssetImage("assets/image-7.jpg"), "Eggs"),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Original Fried Shrimp",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold),
                        ),
                        RichText(
                          text: TextSpan(
                            text: '£',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '6.9',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  )),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Shrimp Category",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            _buildRatingStars(),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Container(
                      height: 330,
                      width: 500,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Read More...",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 50,
                                color: Colors.orange,
                              ),
                              Text(
                                "  0.5 Km Distance",
                                style: TextStyle(fontSize: 30.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.orange,
                              child: Center(
                                child: IconButton(
                                  icon: Icon(Icons.maximize_rounded),
                                  onPressed: () {},
                                  color: Colors.white,
                                  iconSize: 30,
                                ),
                              )),
                          Text(
                            " 1 ",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.orange,
                              child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {},
                                color: Colors.white,
                                iconSize: 30,
                              )),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Add To Cart",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          fixedColor: Colors.orange,
          showUnselectedLabels: false,
          currentIndex: 3,
          showSelectedLabels: false,

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cabin,
              ),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.badge,
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Person"),
          ],
        ),
      ),
    );
  }
}

Text _buildRatingStars() {
  String stars = "";
  for (int i = 0; i < 5; i++) {
    stars += "⭐ ";
  }
  stars.trim();
  return Text(stars);
}

pp(AssetImage image, String pt) {
  return Container(
    height: 300,
    child: Container(
      margin: EdgeInsets.all(10.0),
      width: 210,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange, width: 10),
                ),
                child: CircleAvatar(
                  radius: 90.0,
                  backgroundImage: image,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

ap(AssetImage image, String pt) {
  return Container(
    height: 300,
    child: Container(
      margin: EdgeInsets.all(10.0),
      width: 210,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 80.0,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.orange, width: 10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Colors.black45, BlendMode.darken),
                          image: image)),
                ),
              ),
              Positioned(
                  top: 7,
                  left: 30,
                  bottom: 8,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                    color: Colors.orange,
                    iconSize: 50,
                  ))
            ],
          ),
        ],
      ),
    ),
  );
}
