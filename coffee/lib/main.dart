import 'package:coffee/detailspage.dart';
import 'package:flutter/material.dart';

void main() => runApp(Coffee());

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 15.0),
        children: [
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome,  Jade',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
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
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 45.0),
            child: Container(
              child: Text(
                'Let\'s select the best taste for your next coffee break!',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFB0AAA7)),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Taste of the week',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFCEC7C4)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeelistcard(
                    'assets/coffee3.png',
                    'Caffe Misto',
                    'Coffeeshop',
                    'Our dark risch espresso balanced with steamed milk and a light layer of foam',
                    '\$4.99',
                    false),
                _coffeelistcard(
                    'assets/coffee3.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich full-bodied espresso with bittersweet milk sauce and steamed milk',
                    '\$3.99',
                    false),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore nearby',
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 17.0,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      color: Color(0xFFCEC7C4)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildimage('assets/coffee.jpg'),
                _buildimage('assets/coffee.jpg'),
                _buildimage('assets/coffee.jpg'),
              ],
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.0, right: 5.0),
            child: Container(
              height: 70,
              width: 50,
              child: BottomNavigationBar(items: [
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF473D3A),
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF473D3A),
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF473D3A),
                  icon: Icon(Icons.camera_alt),
                  label: 'Camera',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xFF473D3A),
                  icon: Icon(Icons.person_2_outlined),
                  label: 'Contact',
                ),
                // Add more items as needed
              ]),
            ),
          ),
        ],
      ),
    );
  }

  _buildimage(String img) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      ),
    );
  }

  _coffeelistcard(String imgpath, String name, String sname, String description,
      String price, bool isFavourite) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 300.0,
        width: 225.0,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0, right: 20.0),
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xFFDAB68C)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          sname + '\'s',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          name + '\'s',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 14.0,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price,
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 25.0,
                                  // fontWeight: FontWeight.bold,
                                  color: Color(0xFF3A4742)),
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
                                  color: isFavourite ? Colors.red : Colors.grey,
                                  size: 15.0,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 25.0,
                    left: 60.0,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgpath), fit: BoxFit.contain)),
                    ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            ////BUTTON ///
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              child: Container(
                height: 50.0,
                width: 225.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFF473D3A)),
                child: Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
