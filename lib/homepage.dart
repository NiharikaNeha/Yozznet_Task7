import 'package:flutter/material.dart';
import './app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0, top: 40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5.0,),
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'Alexa',
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(65.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/profile.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      )
                    )
                  ),
                  SizedBox(width: 30.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Alexa',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'CSE',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 130.0,),
                  IconButton(
                    icon: Icon(Icons.expand_more),
                    iconSize: 30.0,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/SecondPage");
                    },
                  )
                ],
              ),
              SizedBox(height: 5.0,),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.call),
                  ),
                  SizedBox(width: 2.0,),
                  IconButton(
                    icon: Icon(Icons.message),
                  ),
                  SizedBox(width: 120,),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/link.png'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/fb.png'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/insta.jpeg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Posts',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Appbar(),
            ],
          ),
        ),
      ),
    ) ;
  }
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 30.0, right: 10.0, bottom: 10.0, top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
                tag: 'Alexa',
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));
                  },
                  child: Container(
                    height: (MediaQuery.of(context).size.height)/3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage('assets/profile.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                )
            ),
                    SizedBox(height: 60.0,),
                    Row(
                      children: <Widget>[
                        Text(
                          'Alexa',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0
                          ),
                        ),
                        SizedBox(width: 200.0,),
                        IconButton(
                          icon: Icon(Icons.expand_less),
                          iconSize: 30.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/HomePage");
                          },
                        )
                      ],
                    ),
                    SizedBox(height: 2.0,),
                    Text(
                      'CSE',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      'Semester III',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                        'Year II',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                        'MIT Manipal',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),

            SizedBox(height: 40.0,),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Member of a Club or Organisation?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: RaisedButton(
                      child: Text(
                        'Login as Club Member',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/LoginPage");
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}

