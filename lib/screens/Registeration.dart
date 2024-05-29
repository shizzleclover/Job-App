import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job/screens/HomePage.dart';
import 'LoginPage.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color myColor = Color.fromRGBO(77, 126, 250, 1);
    Color border = Color.fromRGBO(9, 72, 234, 1);
    Color background = Color.fromRGBO(255, 255, 255, 1);

    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              // Image placeholder for registration
              Center(
                child: SizedBox(
                  width: 360,
                  height: 213,
                  child: Image.asset(
                    'Assets/Images/Register.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 35),
              // Title for registration
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Registration',
                    style: TextStyle(
                      fontFamily: 'Montserrat-ExtraBold',
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Email label
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat-Medium',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
           
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email...',
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17.0),
                      borderSide: BorderSide(
                        color: border,
                        width: 2.0,
                      ),
                    ),
                   
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        'Assets/Icons/Mail.svg',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Password label
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat-Medium',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              // Password TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password...',
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                   
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17.0),
                      borderSide: BorderSide(
                        color: border,
                        width: 2.0,
                      ),
                    ),
                   
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        'Assets/Icons/Password.svg',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Re-enter Password label
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Re-Enter Password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat-Medium',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              // Re-enter Password TextField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Re-Enter Password...',
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17.0),
                      borderSide: BorderSide(
                        color: border,
                        width: 2.0,
                      ),
                    ),
                   
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        'Assets/Icons/Password.svg',
                        width: 30,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              // Submit Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 56.0, // Same height as text fields
                  width: double.infinity, // Match parent width
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: myColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: myColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
