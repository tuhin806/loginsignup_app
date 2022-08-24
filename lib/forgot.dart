import 'package:flutter/material.dart';
class Myforgot extends StatefulWidget {
  const Myforgot({Key? key}) : super(key: key);

  @override
  State<Myforgot> createState() => _MyforgotState();
}

class _MyforgotState extends State<Myforgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: ListView(
        padding: EdgeInsets.only(left: 20.0,right:20.0,top: 160.0),
        children: [
          Text(
            'Reset Password\nSekarang',
            style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          SizedBox(height:130.0),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText: 'Email or phone number',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
            ),
          ),
         SizedBox(height: 60.0),
         Container(
           child: Container(
             child: TextButton(
               onPressed: (){
                 Navigator.pushNamed(context, 'code');
               },
               child: Text(
                 'Send',
                 style: TextStyle(
                   color: Colors.white,fontSize: 30.0,
                  decoration: TextDecoration.underline,
                 ),
               ),
             ),
           ),
           ),
        ],
      ),
    );
  }
}
