import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:techware/UI/Products.dart';
import 'Contact.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30.0,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.blueAccent[100],
        title: Text(
          'Techware Enterprises',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent[100],
              ),
              accountName: new Text('TECHWARE ENTERPRISES LTD'),
              accountEmail: new Text('cnnjuguna@techware.co.ke'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('assets/images/person.jpg'),
              ),
            ),
            new ListTile(
              title: new Text('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
            ),
            AboutListTile(
              applicationName: "Techware Ent.",
              applicationVersion: "0.0.1",
            ),
            new ListTile(
              title: new Text('Features'),
            ),
            new ListTile(
              title: new Text('Products'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Products()));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 100,
                width: 400,
                padding: EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "IT'S LEGIT",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey,
                      fontFamily: 'Montserrat'),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: Colors.white10.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                height: 200,
                width: 330,
                child: Text(
                  "Your Number One Computer Hardware Dealership",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    fontFamily: 'QuickSand',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 140,
                height: 60,
                child: RaisedButton(
                  color: Colors.blueAccent[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  padding: EdgeInsets.all(20.0),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen()));
                  },
                  child: new Text(
                    'Contact Us',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                    color: Colors.white
                  ),),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 350,
                width: 320,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.black87
                ),
                child: new Column(
                  children: [
                    Center(
                      child: new Text('Services Provided', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500,)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.check_circle, color: Colors.green,), onPressed: (){}),
                        Text('We sell Laptops', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400,),),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.check_circle, color: Colors.green,), onPressed: (){}),
                        Text('Do machine repair', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.check_circle, color: Colors.green,), onPressed: (){}),
                        Text('CCTV installation', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.check_circle, color: Colors.green,), onPressed: (){}),
                        Text('Electronics sales', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.check_circle, color: Colors.green,), onPressed: (){}),
                        Text('Other awesome services',style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              CarouselSlider(
                height: 340,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16/9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 900),
                  viewportFraction: 0.8,
                  items: [
                    Container(
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueAccent[100],
                      ),
                      child: Wrap(
                        children: [
                          ListTile(
                            title: Text('CEO', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          ),
                          Image(image: AssetImage('charles.jpg',), height: 180, width: 210,
                          ),
                          ListTile(
                            title: Text('Charles Njuguna'),
                            subtitle: Text('Owner of Techware Ent Ltd'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueAccent[100],
                      ),
                      child: Wrap(
                        children: [
                          ListTile(
                            title: Text('Sales manager', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          ),
                          Image(image: AssetImage('loise.jpg',), height: 180, width: 210,
                          ),
                          ListTile(
                            title: Text('Loise Mwangi'),
                            subtitle: Text('Sales manager in Techware Ent Ltd'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueAccent[100],
                      ),
                      child: Wrap(
                        children: [
                          ListTile(
                            title: Text('Head of Software Development', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          ),
                          Image(image: AssetImage('calvin.jpg'), height: 180, width: 210,
                          ),
                          ListTile(
                            title: Text('Calvin Njuguna'),
                            subtitle: Text('Software head of Techware Ent Ltd'),
                          ),
                        ],
                      ),
                    ),
                  ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
