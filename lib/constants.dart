//page which contains all the constants which will be used for the development of application
import 'package:flutter/material.dart';

//font to be used in all places in the app except on the login page and on generated ticket cards
const String kAppfont = "Imprima";

//Text style to be used on the title of every appbar
const TextStyle kHeadingStyle =
    TextStyle(color: Colors.black, fontFamily: kAppfont, fontSize: 25);

//bolded normal text
const TextStyle kNormalText =
    TextStyle(fontFamily: kAppfont, fontSize: 23, fontWeight: FontWeight.bold);
//Background color used in login page and also as the color of appbars and bottom NavBar
const Color kPrimaryColor = Color(0xFFFFBE9F);
//LoginPage top and bottom container colour
const Color kLoginPageBar = Color(0XFF5769AC);
