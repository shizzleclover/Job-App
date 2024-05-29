import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job/screens/HomePage.dart'; 
import 'Registeration.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color myColor = Color.fromRGBO(77, 126, 250, 1);
    Color border = Color.fromRGBO(9, 72, 234, 1);
    Color background = Color.fromRGBO(255, 255, 255, 1);

    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
     child:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: 360,
                height: 213,
                child: Image.asset(
                  'Assets/Images/LoginPage.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 35),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Montserrat-ExtraBold',
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email...',
                  hintStyle: TextStyle(
                    fontFamily: 'Montserrat-Light',
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17.0),
                    borderSide: BorderSide(
                      color: border,
                      width: 2.0, // Make the border thicker
                    ),
                  ),
                 
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      'Assets/Icons/Mail.svg', // Replace with the path to your SVG icon
                      width: 30,
                      height: 30,
                    ),
                    onPressed: () {
                      // Add onPressed functionality here if needed
                    },
                  ),
                ),
                // Remove fixed height
              ),
            ),
            SizedBox(height: 30),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), // Add horizontal padding
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password...',
                  hintStyle: TextStyle(
                    fontFamily: 'Montserratt-Regular',
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17.0),
                    borderSide: BorderSide(
                      color: border,
                      width: 2.0, 
                    ),
                  ),
                 
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      'Assets/Icons/Password.svg', // Replace with the path to your SVG icon
                      width: 30,
                      height: 30,
                    ),
                    onPressed: () {
                      // Add onPressed functionality here if needed
                    },
                  ),
                ),
                
              ),
              
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: SizedBox(
                height: 56.0,
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () 
                  {
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
                onTap: (         
                ) {
                   Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                },
                child: Text(
                  'Forget  Password',
                  style: TextStyle(
                    color: myColor,
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                   fontFamily: 'Montserrat'
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
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                 },
                child: Text(
                  'Create A New Account?',
                  style: TextStyle(
                    color: myColor,
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                   fontFamily: 'Montserrat'
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
