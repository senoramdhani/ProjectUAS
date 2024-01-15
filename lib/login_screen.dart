import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/about.dart';
import 'package:uts_mobile/dashboard_screen.dart';
import 'package:uts_mobile/register_screen.dart';
import 'package:uts_mobile/splash_screen.dart';
// import 'package:flutter_application_1/screens/splash_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SplashScreen(); // Ganti dengan nama halaman "home" yang sesuai.
                  }));
                },
                child: SizedBox(
                  height: 126,
                  width: 113,
                  child: Image.asset('assets/images/Union.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, right: 250),
              child: Text(
                "Log in ",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your username",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 55,
                width: 343,
                child: Material(
                  color: Color.fromARGB(255, 8, 12, 25),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Forgot Password ",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "------------OR WITH------------ ",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 55,
                width: 343,
                child: Material(
                  color: Color.fromARGB(255, 29, 76, 231),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          "Login With Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 55,
                width: 343,
                child: Material(
                  color: Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          "Login With Google",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ));
                  },
                  child: Text(
                    "create Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7165D6),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}