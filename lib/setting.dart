import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: Colors.lightGreen.shade100,
            height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[

              //CONTAINER BACK+SETTING
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: new Icon(Icons.arrow_back_rounded, color: Colors.black38),
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //CONTAINER CARD
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Column(
                  children: <Widget>[

                    //CARD YOUR PROFILE
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 1.0),
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Card(
                          child: Container(
                            color: Colors.lightGreen.shade200,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        onPressed: () {},
                                        iconSize: 30.0,
                                        icon: new Icon(Icons.person_outline, color: Colors.black38),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Your Profile',
                                        style: TextStyle(fontSize: 20, color: Colors.black45),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //CARD SOUND-MUSIC
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 1.0),
                      height: 100,
                      child: Row(
                        children: <Widget>[

                          //MUSIC CARD
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  color: Colors.lightGreen.shade200,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            'Music',
                                            style: TextStyle(fontSize: 18, color: Colors.black45),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: MusicSwitch(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //SOUND CARD
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Card(
                                child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  color: Colors.lightGreen.shade200,
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            'Sound Effect',
                                            style: TextStyle(fontSize: 18, color: Colors.black45),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: SoundSwitch(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //CARD HELP
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 1.0),
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Card(
                          child: Container(
                            color: Colors.lightGreen.shade200,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        onPressed: () {},
                                        iconSize: 30.0,
                                        icon: new Icon(Icons.help_outline_rounded, color: Colors.black38),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Help Center',
                                        style: TextStyle(fontSize: 20, color: Colors.black45),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //CARD PLANTS BOOK
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 1.0),
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Card(
                          child: Container(
                            color: Colors.lightGreen.shade300,
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        onPressed: () {},
                                        iconSize: 30.0,
                                        icon: new Icon(Icons.book_outlined, color: Colors.black38),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Plants Book',
                                        style: TextStyle(fontSize: 20, color: Colors.black45),
                                      ),
                                    ),
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
            ],
          )
        ),
      ),
    );
  }
}

class MusicSwitch extends StatefulWidget {
  @override
  _MusicSwitchState createState() => _MusicSwitchState();
}

class _MusicSwitchState extends State<MusicSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
            print(isSwitched);
          });
        },
        activeTrackColor: Colors.green.shade400,
        activeColor: Colors.green.shade800,
      ),
    );
  }
}


class SoundSwitch extends StatefulWidget {
  @override
  _SoundSwitchState createState() => _SoundSwitchState();
}

class _SoundSwitchState extends State<SoundSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
            print(isSwitched);
          });
        },
        activeTrackColor: Colors.green.shade400,
        activeColor: Colors.green.shade800,
      ),
    );
  }
}