import 'package:flutter/material.dart';
import 'package:loginsignup/code.dart';
import 'package:loginsignup/forgot.dart';
import 'package:loginsignup/login.dart';
import 'package:loginsignup/register.dart';
import 'package:loginsignup/resetpassword.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'register':(context)=>Myregister(),
      'forgot':(context)=>Myforgot(),
      'code':(context)=>Mycode(),
      'resetpassword':(context)=>Myreset(),
    },
  ));
}