import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _changeColor = const Color(0x40000000);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Ink(
      width: MediaQuery.of(context).size.width * 0.305,
      height: MediaQuery.of(context).size.height * 0.065,
      child: InkWell(
        onTap: () {
          setState(() {
            _changeColor = Colors.black;
            Future.delayed(const Duration(milliseconds: 200), () {
              setState(() {
                _changeColor = const Color(0x40000000);
              
              });
            });
          });
        },
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.055,
                color: _changeColor),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.055,
                color: Colors.white,
                child: Center(
                  child: (
                    TextFormField(
                          decoration: InputDecoration(
                              hintText: "Nhập email",
                              labelText: "Email",
                              labelStyle:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}
