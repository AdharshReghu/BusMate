import 'package:flutter/material.dart';
import 'constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          //Container to display the login page bar where the logo is displayed
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kLoginPageBar,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Transform.scale(
                    scale: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset('assets/login page icon.png'),
                    )),
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  //Login Page Image section
                  Expanded(
                    flex: 4,
                    child: Image(
                      image: AssetImage("assets/loginPageImage.png"),
                    ),
                  ),

                  //Container to display the google sign in button
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 25, right: 25, bottom: 60),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/google.png'),
                          ),
                          SizedBox(width: 10),
                          Text("Continue With Google"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: kLoginPageBar,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
