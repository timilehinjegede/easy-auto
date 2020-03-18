import 'package:easyauto/details-screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/details': (context) => DetailScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, right: 20.0, left: 20.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 21,
                          height: 21,
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 35.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        SizedBox(
                          width: 180,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.grey,
                                )),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Colors.grey,
                                )),
                                hintText: 'Search for parts',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Text(
                      'Special Offers',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _specialOffers(),
                          SizedBox(
                            width: 15,
                          ),
                          _specialOffers(),
                          SizedBox(
                            width: 15,
                          ),
                          _specialOffers(),
                          SizedBox(
                            width: 15,
                          ),
                          _specialOffers(),
                          SizedBox(
                            width: 15,
                          ),
                          _specialOffers(),
                          SizedBox(
                            width: 15,
                          ),
                          _specialOffers(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'My Garage',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/details');
                            },
                            child: Container(
                              height: 200,
                              width: 140,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 170,
                                    width: 140,
                                    child: Stack(
                                      children: <Widget>[
                                        Card(
                                          child: Container(
                                            height: 170,
                                            width: 140,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'images/bmwcar.png'),
                                                  fit: BoxFit.contain),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 10,
                                          child: Hero(
                                              tag: 'imageTag',
                                              child: Image.asset(
                                                  'images/bmw_logo.png')),
                                        ),
                                        Positioned(
                                          left: 120,
                                          bottom: 150,
                                          child:
                                              Image.asset('images/success.png'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'X5 4.4L',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'BMW',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          _buildHonda(),
                          SizedBox(
                            width: 16,
                          ),
                          _addVehicle(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Recently Viewed',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                          _recentlyViewed(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _recentlyViewed() {
    return Card(
      elevation: 1.0,
      borderOnForeground: false,
      child: Container(
        height: 85,
        width: 70,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'images/viewd.png',
          ),
          fit: BoxFit.contain,
        )),
      ),
    );
  }

  Widget _specialOffers() {
    return Container(
      height: 150,
      width: 240,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        border: Border.all(
          color: Colors.black54,
          width: 1.0,
        ),
      ),
//                  color: Colors.white,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/mobil_oil_kit.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 160,
            bottom: 110,
            child: Container(
              width: 50,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/mobil.png'), fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHonda() {
    return Container(
      height: 200,
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 170,
            width: 140,
            child: Stack(
              children: <Widget>[
                Card(
                  child: Container(
                    height: 170,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/bmwcar.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Image.asset('images/honda-logo.png'),
                ),
                Positioned(
                  left: 105,
                  bottom: 145,
                  child: Image.asset('images/spanner.png'),
                ),
              ],
            ),
          ),
          Text(
            'Accord 2.4L',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'HONDA',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildAnotherHonda() {
    return Container(
      height: 200,
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 170,
            width: 140,
            child: Stack(
              children: <Widget>[
                Card(
                  child: Container(
                    height: 170,
                    width: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/bmwcar.png'),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Image.asset('images/honda-logo.png'),
                ),
                Positioned(
                  left: 105,
                  bottom: 145,
                  child: Image.asset('images/spanner.png'),
                ),
              ],
            ),
          ),
          Text(
            'Accord 2.4L',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'HONDA',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _addVehicle() {
    return Column(
      children: <Widget>[
        Container(
          height: 170,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.grey, width: 1.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/addvehicle.png'),
              SizedBox(
                height: 10,
              ),
              Text(
                'ADD NEW VEHICLE',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 20,
        ),
      ],
    );
  }
}
