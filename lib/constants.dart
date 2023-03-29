import 'package:flutter/material.dart';
//page which contains all the constants which will be used for the development of application

//font to be used in all places in the app except on the login page and on generated ticket cards
const String kAppFont = "Imprima";

//Text style to be used on the title of every appbar
const TextStyle kHeadingStyle =
    TextStyle(color: Colors.black, fontFamily: kAppFont, fontSize: 25);

//bolded normal text
const TextStyle kNormalText =
    TextStyle(fontFamily: kAppFont, fontSize: 23, fontWeight: FontWeight.bold);

//button colors
Color kRedButton = const Color(0xFFE96160);
Color kBlueButton = const Color(0xFF5769AC);

//button styles for blue and red button(except the red button in profile page)
ButtonStyle kBlueButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: kBlueButton,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));

ButtonStyle kRedButtonStyle = ElevatedButton.styleFrom();

//Background color used in login page and also as the color of appbars and bottom NavBar
const Color kPrimaryColor = Color(0xFFFFBE9F);
//LoginPage top and bottom container colour
const Color kLoginPageBar = Color(0XFF5769AC);
