import 'package:flutter/material.dart';
class Mycode extends StatefulWidget {
  const Mycode({Key? key}) : super(key: key);

  @override
  State<Mycode> createState() => _MycodeState();
}

class _MycodeState extends State<Mycode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'O  P  T',
              style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 40.0,
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
                  hintText: 'OTP code',
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
                  Navigator.pushNamed(context, 'resetpassword');
                },
                child: Text(
                  'OK',
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
