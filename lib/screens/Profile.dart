import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'HomePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;
  Color main = Color.fromRGBO(255, 255, 255, 1);
  Color searchColor = Color.fromRGBO(209, 216, 235, 1);
  Color border = Color.fromRGBO(188, 177, 177, 1);
  Color highlight = Color.fromRGBO(77, 126, 250, 1);
  Color bound = Color.fromRGBO(188, 177, 177, 1);
  double lineWidth = 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: searchColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: main,
        title: Text(
          'Profil Saya',
          style: TextStyle(
            fontFamily: 'Montserrat-SemiBold',
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
        shape: Border(bottom: BorderSide(color: border, width: 2.0)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Container(
                      width: 450, // Adjust the width as needed
                      height: 200, // Adjust the height as needed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: main,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('Assets/Images/ProfilePic.png'),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'John Doe', // Replace with actual name
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Flutter Developer', // Replace with actual role
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'john.doe@example.com | +1234567890', // Replace with actual email
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'Assets/Icons/EditProfile.svg',
                          width: 40,
                          height: 36,
                        ),
                        onPressed: () {
                          // Handle icon onPressed event
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 450, // Set width to match the first container
              height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: main,
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 50,
                    bottom: 50,
                    child: Container(
                      width: lineWidth,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 50,
                    bottom: 50,
                    child: Container(
                      width: lineWidth,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('First text in the second space'),
                      Text('Second text in the second space'),
                      Text('Third text in the second space'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 450, // Set width to match the first container
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: main,
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    bottom: 20,
                    child: Container(
                      width: lineWidth,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 20,
                    bottom: 20,
                    child: Container(
                      width: lineWidth,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('First text in the third space'),
                      Text('Second text in the third space'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 2.0,
            color: bound,
          ),
          BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Home.svg',
                    color: _selectedIndex == 0 ? highlight : Colors.black,
                  ),
                  onPressed: () {
                    _onItemTapped(0);
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/Profile.svg',
                    color: _selectedIndex == 1 ? highlight : Colors.black,
                  ),
                  onPressed: () {
                    _onItemTapped(1);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homepage()),
        );
        break;
      case 1:
        // Do nothing, already on ProfilePage
        break;
    }
  }
}
