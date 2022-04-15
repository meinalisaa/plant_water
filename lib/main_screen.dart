import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_water/detail_screen.dart';
import 'package:plant_water/setting.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 0.0),
        child: Column(
          children: <Widget>[

            //CONTAINER SETTING AND SEARCH
            Container(
              margin: EdgeInsets.only(top: 7.0, left: 7.0, right: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child:
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Settings();
                          }));
                        },
                        iconSize: 30.0,
                        icon: new Icon(Icons.settings, color: Colors.black38),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            height: 40,
                            // decoration: ShapeDecoration(
                            //     color: Colors.lightGreen.shade200,
                            //     shape: CircleBorder()
                            // ),
                            child: IconButton(
                              onPressed: () {},
                              iconSize: 28.0,
                              icon: new Icon(Icons.search, color: Colors.black45),
                            ),
                          ),
                          Container(
                            height: 40,
                            decoration: ShapeDecoration(
                                color: Colors.lightGreen.shade200,
                                shape: CircleBorder()
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: new Icon(Icons.person_outline, color: Colors.black45),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),

            //CONTAINER WATER YOUR PLANT
            Container(
              margin: EdgeInsets.only(
                top: 25.0,
                right: 20.0,
                bottom: 10.0,
                left: 21.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Water Your Plants!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            //CONTAINER CARD TUMBUHAN
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen();
                }));
              },
              child:
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    child: Card(
                      child: Container(
                        color: Colors.lightGreen.shade100,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                //BLOK KIRI - ICON TUMBUHAN
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 100,
                                    child:
                                    Image.asset('images/Filodendro-Atom.png', width: 100, height: 100),
                                  ),
                                ),

                                //BLOK TENGAH
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 100,
                                    child: Column(
                                      children: <Widget>[

                                        //NAMA TUMBUHAN
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.only(left: 15.0),
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                'Filodendro Atom',
                                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),

                                        //ICON DAN UKURAN AIR
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Row(
                                              children: <Widget>[
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: IconButton(
                                                    icon: new Icon(
                                                      Icons.water_drop_outlined,
                                                      color: Colors.lightGreen.shade900,
                                                      size: 20.0,
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                    '250 ml',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.lightGreen.shade900
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                //BLOK KANAN - ICON AIR
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 50,
                                    decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: CircleBorder()
                                    ),
                                    child: WaterDropButton(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WaterDropButton extends StatefulWidget {
  @override
  _WaterDropButtonState createState() => _WaterDropButtonState();
}

class _WaterDropButtonState extends State<WaterDropButton> {
  bool isWatered = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isWatered ? Icons.check_rounded : Icons.water_drop_outlined,
        color: Colors.lightGreen.shade900,
      ),
      onPressed: () {
        setState(() {
          isWatered = !isWatered;
        });
      },
    );
  }
}