import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Profile.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  Color main = Color.fromRGBO(255, 255, 255, 1);
  Color searchColor = Color.fromRGBO(209, 216, 235, 1);
  Color border = Color.fromRGBO(188, 177, 177, 1);
  Color highlight = Color.fromRGBO(77, 126, 250, 1);
  Color bound = Color.fromRGBO(188, 177, 177, 1);
  Color text = Color.fromRGBO(20, 193, 99, 1);
  Color text2 = Color.fromRGBO(208, 126, 3, 0.9);
  Color small = Color.fromRGBO(0, 0, 0, 0.6);


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
       
        if (ModalRoute.of(context)?.settings.name != '/') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
        }
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: searchColor,
appBar: AppBar(
  backgroundColor: main,
  automaticallyImplyLeading: false,
  title: Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: searchColor,
                  borderRadius: BorderRadius.circular(3.0), // Add border radius for rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SvgPicture.asset('Assets/Icons/Search.svg'),
                      ),
                      Expanded(
                        child: Container(
                         
                          height: 40.0, // Lower the height of the search bar
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Flutter Developer',
                              hintStyle: TextStyle(),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            onChanged: (value) {
                              // Add your search logic here
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '10 jobs founds',
                style: TextStyle(fontSize: 17.0, color: small, fontFamily: 'Montserrat', fontWeight: FontWeight.w500 ),
              ),
            ),
            IconButton(
              icon: SvgPicture.asset('Assets/Icons/Filter.svg', width: 30, height: 30,),
              onPressed: () {
                // Add your action here
              },
            ),
          ],
        ),
      ],
    ),
  ),
  bottom: PreferredSize(
    preferredSize: Size.fromHeight(25.0), // Adjust the height for the boundary
    child: Container(
      width: double.infinity,
      height: 2.0,
      color: bound,
    ),
  ),
),



      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity, // Adjust the width as needed
                    height: 230, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: main,
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0), // Add padding around the information
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start, 
                        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Image.asset(
                              'Assets/Images/P.png',
                              width: 50,
                              height: 35,
                              fit: BoxFit.cover, 
                            ),
                          ),
                          Text(
                            'Junior Flutter Developer', 
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, fontFamily: 'Montserrat', color: highlight),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Pt.Pertamina',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),
                          ),
                          
                          SizedBox(height: 5),
                          Text(
                            'Jakarta Raya, DKI Jakarta',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                          ),
                          
                          Text(
                            'Perkiraan Gaji Rp. 10.000.000',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700 , color: text),
                          ),

                          SizedBox(height: 20),
                          Text(
                            '1 jam yang lalu',
                            style: TextStyle(fontSize: 10, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    bottom: 0,
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset('Assets/Icons/Bookmark.svg', width: 30, height: 30),
                        onPressed: () {
                          // Handle icon onPressed event
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity, // Adjust the width as needed
                    height: 230, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: main,
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0), // Add padding around the information
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start, 
                        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Image.asset(
                              'Assets/Images/P.png',
                              width: 50,
                              height: 35,
                              fit: BoxFit.cover, 
                            ),
                          ),
                          Text(
                            'Senior Flutter Developer', 
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, fontFamily: 'Montserrat', color: highlight),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Pt.Pertamina',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),
                          ),
                          
                          SizedBox(height: 5),
                          Text(
                            'Jakarta Raya, DKI Jakarta',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                          ),
                          
                          Text(
                            'Perkiraan Gaji Rp. 10.000.000',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700 , color: text),
                          ),

                          SizedBox(height: 20),
                          Text(
                            '1 jam yang lalu',
                            style: TextStyle(fontSize: 10, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    bottom: 0,
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset('Assets/Icons/Bookmark.svg', width: 30, height: 30),
                        onPressed: () {
                          // Handle icon onPressed event
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity, // Adjust the width as needed
                    height: 230, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: main,
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0), // Add padding around the information
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start, 
                        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Image.asset(
                              'Assets/Images/Indon.png',
                              width: 35,
                              height: 35,
                              fit: BoxFit.cover, 
                            ),
                          ),
                          Text(
                            'Flutter Developer', 
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, fontFamily: 'Montserrat', color: highlight),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Pt.Pertamina',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),
                          ),
                          
                          SizedBox(height: 5),
                          Text(
                            'Jakarta Raya, DKI Jakarta',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                          ),
                          
                          Text(
                            'Perkiraan Gaji Dibawah Perkiraan Anda',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700 , color: text2),
                          ),

                          SizedBox(height: 20),
                          Text(
                            '1 jam yang lalu',
                            style: TextStyle(fontSize: 10, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    bottom: 0,
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset('Assets/Icons/Bookmark.svg', width: 30, height: 30),
                        onPressed: () {
                          // Handle icon onPressed event
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity, // Adjust the width as needed
                    height: 230, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: main,
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0), // Add padding around the information
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start, 
                        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Image.asset(
                              'Assets/Images/Starbucks.png',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover, 
                            ),
                          ),
                          Text(
                            'Flutter Developer', 
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, fontFamily: 'Montserrat', color: highlight),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Pt.Pertamina',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Montserrat'),
                          ),
                          
                          SizedBox(height: 5),
                          Text(
                            'Jakarta Raya, DKI Jakarta',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Perkiraan Gaji Rp. 8.000.000',
                            style: TextStyle(fontSize: 12, fontFamily: 'Montserrat', fontWeight: FontWeight.w700 , color: text),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    bottom: 0,
                    child: Center(
                      child: IconButton(
                        icon: SvgPicture.asset('Assets/Icons/Bookmark.svg', width: 30, height: 30),
                        onPressed: () {
                          // Handle icon onPressed event
                        },
                      ),
                    ),
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
            }
          ),
        ],
      ),
    ),
  ],
),

    );
  }
}
