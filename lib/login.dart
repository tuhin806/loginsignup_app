import 'package:flutter/material.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/signin.PNG'),fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35.0,top: 125.0),
              child: Text(
                  'welcome\nBack',
                 style: TextStyle(color: Colors.white,fontSize: 33.0),
              ),
            ),
            SingleChildScrollView  (
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.5,
                right: 35.0,
                  left: 35.0,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                    ),
                   SizedBox(
                     height: 50.0,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Sign In',
                         style: TextStyle(
                           color: Colors.black,fontWeight: FontWeight.bold,
                           fontSize: 30.0,
                         ),
                       ),
                       CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.grey,
                         child: IconButton(
                           color: Colors.white,
                           onPressed: (){},
                           icon: Icon(Icons.arrow_forward),
                         ),
                       ),
                     ],
                   ),
                    SizedBox(height: 80.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       TextButton(
                           onPressed: (){
                             Navigator.pushNamed(context, 'register');
                           },
                         child: Text(
                           'Sign Up',
                           style: TextStyle(
                             decoration: TextDecoration.underline,
                             color: Colors.black,
                             fontSize:18.0,
                           ),
                         ),
                       ),
                       TextButton(
                           onPressed: (){
                             Navigator.pushNamed(context, 'forgot');
                           },
                         child: Text(
                           'Forgot password',
                           style: TextStyle(
                             decoration: TextDecoration.underline,
                             color: Colors.black,
                             fontSize:18.0,
                           ),
                         ),
                       ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
