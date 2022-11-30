// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practice_8/models/cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int quantity = 0;
  int price = 125;

  List Carts = <Cart>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black, // Change Custom Drawer Icon Color
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          "sneakers",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            letterSpacing: 2,
            fontSize: 30,
            fontFamily: 'Kumbh Sans',
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            child: Image.asset('images/image-avatar.png'),
          ),
        ],
        elevation: 2,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              child:
                  Icon(textDirection: TextDirection.ltr, Icons.cancel_outlined),
            ),
            ListTile(
              title: Text(
                "Collection",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "Men",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "Women",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "About",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "Contact",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CarouselSlider(
                items: <Widget>[
                  Image.asset('images/image-product-1.jpg'),
                  Image.asset('images/image-product-2.jpg'),
                  Image.asset('images/image-product-3.jpg'),
                  Image.asset('images/image-product-4.jpg')
                ],
                options: CarouselOptions(
                  height: 350,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "sneaker company".toUpperCase(),
                      style: TextStyle(
                          color: Color.fromRGBO(255, 125, 26, 1),
                          fontFamily: 'Kumbh Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 13,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fall Limited Edition Sneakers",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
                          fontFamily: 'Kumbh Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 26,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "These low-profile sneakers are your perfect casual wear companion. Featuring a durale rubber outer sole, they'll withstand everything the weather can offer.",
                      style: TextStyle(
                          color: Color.fromRGBO(104, 112, 125, 1),
                          fontFamily: 'Kumbh Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          height: 1.4,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Text(
                            "#125.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.75),
                                fontFamily: 'Kumbh Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                                letterSpacing: 2),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          padding: EdgeInsets.fromLTRB(14, 5, 0, 0),
                          color: Color.fromRGBO(255, 237, 224, 1),
                          child: Text(
                            "50%",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 125, 26, 1),
                                fontFamily: 'Kumbh Sans',
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                letterSpacing: 2),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Text(
                            "#250.00",
                            style: TextStyle(
                                color: Color.fromRGBO(182, 188, 200, 1),
                                fontFamily: 'Kumbh Sans',
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                letterSpacing: 2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 60,
                      color: Color.fromRGBO(247, 248, 253, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: (() {
                              setState(() {
                                if (quantity < 1) {
                                } else {
                                  quantity--;
                                }
                              });
                            }),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 30),
                              child: Icon(
                                Icons.remove,
                                color: Color.fromRGBO(255, 125, 26, 1),
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 30),
                              child: Text(
                                "$quantity",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Kumbh Sans',
                                  fontWeight: FontWeight.w900,
                                ),
                              )),
                          InkWell(
                            onTap: (() {
                              setState(() {
                                quantity++;
                              });
                            }),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 30),
                              child: Icon(
                                Icons.add,
                                color: Color.fromRGBO(255, 125, 26, 1),
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23),
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 400,
                      height: 50,
                      child: FloatingActionButton.extended(
                        label: Text(
                          'Add To Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Color.fromRGBO(255, 125, 26, 1),
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 24,
                        ),
                        onPressed: () {
                          if (quantity > 0) {
                            Cart newItem = Cart(
                                image:
                                    Image.asset('images/image-product-1.jpg'),
                                quantity: quantity,
                                price: price);

                            Carts.add(newItem);
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 13),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
