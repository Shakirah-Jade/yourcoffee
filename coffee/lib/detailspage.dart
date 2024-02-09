import 'package:coffee/main.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 20.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF3B2B7),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20.0,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage('assets/woman.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2 - 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0)),
                        color: Colors.white),
                  )),
              //CONTENT
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 20.0,
                  left: 15.0,
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2) - 50.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        Text(
                          'Preparation time',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          '5min',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFC6C4C4)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Ingredients',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 110.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildingredients(
                                  'Water',
                                  Icon(
                                    Icons.bloodtype,
                                    color: Colors.white,
                                  ),
                                  Color(0xFF6FC5DA)),
                              buildingredients(
                                  'Brewed Espresso',
                                  Icon(
                                    Icons.cabin,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  Color(0xFF615955)),
                              buildingredients(
                                  'Sugar',
                                  Icon(
                                    Icons.add_box,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  Color(0xFFF39595)),
                              buildingredients(
                                  'Toffee Nut Syrup',
                                  Icon(
                                    Icons.pedal_bike,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  Color(0xFF8FC28A)),
                              buildingredients(
                                  'Natural Flavors',
                                  Icon(
                                    Icons.energy_savings_leaf,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  Color(0xFF3B8079)),
                              buildingredients(
                                  'Vanilla Syrup',
                                  Icon(
                                    Icons.flaky,
                                    color: Colors.white,
                                    size: 18.0,
                                  ),
                                  Color(0xFFF8B870)),
                              SizedBox(
                                width: 25.0,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Nutrition Information',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Calories',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              '250',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Size gm',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              '10gm',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Caffeine',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              '150mg',
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: 0.5,
                            color: Color(0xFFC6C4C4),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.0),
                                color: Color(0xFF473D3A)),
                            child: Center(
                              child: Text(
                                'Make Order',
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 5.0,
                  left: 155.0,
                  child: Stack(
                    children: [
                      Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Leaf.png'),
                          ),
                        ),
                      ),
                      Container(
                        height: 270.0,
                        width: 270.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/coffee2.png'),
                          ),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  top: 45.0,
                  left: 15.0,
                  child: Container(
                    height: 300.0,
                    width: 250.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 150.0,
                              child: Text(
                                'Caramel Macchiato',
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  size: 18.0,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 170.0,
                          child: Text(
                            'is true or null, the glyph causing overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 13.0,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ////THE BU SMALL IMAGES//
                        Row(
                          children: [
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xFF473D3A)),
                              child: Center(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '4.2',
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 13.0,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '/5',
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 13.0,
                                            color: Color(0xFF7C7573)),
                                      ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 35.0,
                                      width: 80.0,
                                    ),
                                    Positioned(
                                        left: 40.0,
                                        child: Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17.5),
                                              border: Border.all(
                                                  color: Color(0xFFF3B2B7),
                                                  style: BorderStyle.solid,
                                                  width: 1.0),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/woman.jpg'),
                                                  fit: BoxFit.cover)),
                                        )),
                                    Positioned(
                                      left: 20.0,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.5),
                                            border: Border.all(
                                                color: Color(0xFFF3B2B7),
                                                style: BorderStyle.solid,
                                                width: 1.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/woman.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          border: Border.all(
                                              color: Color(0xFFF3B2B7),
                                              style: BorderStyle.solid,
                                              width: 1.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/woman.jpg'),
                                              fit: BoxFit.cover)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  '+ 27 more',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 12.0,
                                      color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  buildingredients(String name, Icon iname, Color bgColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: bgColor),
            child: Center(
              child: iname,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Container(
            width: 60.0,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 12.0,
                    color: Color(0xFFC2C0C0)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
