import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  Color thick = Color.fromRGBO(4, 4, 4, 1);
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
            color: thick,
            fontSize: 28,
            fontWeight: FontWeight.w700,
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
                      width: 430, // Adjust the width as needed
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
                              backgroundImage: AssetImage('Assets/Images/ProfilePic.png'),
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
            Container(
              width: 430, // Set width to match the first container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: main,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('Assets/Icons/Case.svg', width: 35, height: 35),
                        SizedBox(width: 10),
                        Text(
                          'Pengalaman Kerja',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: highlight,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(width: 130),
                        SvgPicture.asset('Assets/Icons/add.svg', width: 15, height: 15),
                      ],
                    ),
                    Divider(thickness: lineWidth, color: Colors.grey), // Add a vertical divider
                    Text('Senior Flutter Developer', style: TextStyle(fontSize: 16, fontFamily: 'Montserrat', color: thick, fontWeight: FontWeight.w800)),
                    Text('PT. Bangkit Bersama Kita', style: TextStyle(fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                    Text('Januari 2020 - Desember 2022', style: TextStyle(fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                    SizedBox(height: 8),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in nisl dolor. Donec convallis quam a dignissim pulvinar. Nullam rhoncus elit a nisi elementum, sed luctus tortor porta. Etiam ac pellentesque lorem.',
                      style: TextStyle(fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
                    ),
                    Divider(thickness: lineWidth, color: Colors.grey),
                    Text('Junior Flutter Developer', style: TextStyle(fontSize: 16, fontFamily: 'Montserrat', color: thick, fontWeight: FontWeight.w800)),
                    Text('PT. Bangkit Bersama Kita', style: TextStyle(fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                    Text('Januari 2020 - Desember 2022', style: TextStyle(fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                    SizedBox(height: 8),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in nisl dolor. Donec convallis quam a dignissim pulvinar. Nullam rhoncus elit a nisi elementum, sed luctus tortor porta. Etiam ac pellentesque lorem.',
                      style: TextStyle(fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 430, // Set width to match the first container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: main,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('Assets/Icons/educate.svg', width: 35, height: 35),
                        SizedBox(width: 10),
                        Text(
                          'Pendidikan',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: highlight,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(width: 180),
                        SvgPicture.asset('Assets/Icons/add.svg', width: 15, height: 15),
                      ],
                    ),
                    Divider(thickness: lineWidth, color: Colors.grey), // Add a vertical divider
                    Text('S1 Teknik Informatika', style: TextStyle(fontSize: 16, fontFamily: 'Montserrat', color: thick, fontWeight: FontWeight.w800)),
                    Text('PT. Bangkit Bersama Kita', style: TextStyle(fontSize: 14, fontFamily: 'Montserrat', fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 430,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: main,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('Assets/Icons/brain.svg', width: 35, height: 35),
                        SizedBox(width: 10),
                        Text(
                          'Kemampuan',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: highlight,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(width: 180),
                        SvgPicture.asset('Assets/Icons/add.svg', width: 15, height: 15),
                      ],
                    ),
                    Divider(thickness: lineWidth, color: Colors.grey), // Add a vertical divider
                  ],
                ),
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
