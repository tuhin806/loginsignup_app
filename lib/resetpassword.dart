import 'package:flutter/material.dart';
class Myreset extends StatefulWidget {
  const Myreset({Key? key}) : super(key: key);

  @override
  State<Myreset> createState() => _MyresetState();
}

class _MyresetState extends State<Myreset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Reset password\n          or\nNew Password',
            style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height: 80.0),
          Container(
            padding: EdgeInsets.only(left: 40.0,right: 40.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 40.0,right: 40.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Re-password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, 'login');
              },
              child: Text(
                'Ok',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
