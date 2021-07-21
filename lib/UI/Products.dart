import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[100],
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          ),
        ],
        title: Text(
          'Products',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'QuickSand'
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: laptops(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child:
                            Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: AssetImage("assets/images/laptop.jpg"),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: accessories(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child:
                            Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: AssetImage("assets/images/comp-accessories.png"),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: cctv(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10.0),
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child:
                            Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: AssetImage("assets/images/cctv.jpg"),
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
    );
  }
}

laptops(){
  return Column(
   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
   children: [
     Padding(
         padding: const EdgeInsets.only(left: 8.0),
       child: Container(
         padding: EdgeInsets.only(bottom: 5.0),
         child: Text(
           "Laptops",
           style: TextStyle(
             color: Colors.blue,
             fontSize: 24.0,
             fontWeight: FontWeight.w800
           ),
         ),
       ),
     ),
     Padding(
         padding: const EdgeInsets.only(left: 8.0),
       child: Container(
         child: Column(
           children: [
             Container(
               child: Text(
                 'Get Brand New and Trusted',
                 style: TextStyle(
                   color: Colors.black54,
                   fontSize: 18.0,
                 ),
               ),
             ),
             Container(
               child: Text(
                 "XUK laptops at fair prices",
                 style: TextStyle(
                   color: Colors.black54,
                   fontSize: 18.0,
                 ),
               ),
             ),
           ],
         ),
       ),
     ),
   ],
  );
}

accessories(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Text(
            "Accessories",
            style: TextStyle(
                color: Colors.green,
                fontSize: 24.0,
                fontWeight: FontWeight.w800
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text(
                  'We have a variety of quality',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "computer accessories",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

cctv(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Text(
            "Surveillance",
            style: TextStyle(
                color: Colors.red,
                fontSize: 24.0,
                fontWeight: FontWeight.w800
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text(
                  'We sell CCTV and',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "surveillance appliances and",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "offer installation",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}