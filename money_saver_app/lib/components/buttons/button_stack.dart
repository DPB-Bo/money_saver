import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonStackStyle extends StatefulWidget {
  final String upCaseText;
  var SwitchNavigation;
  final String lowCaseText;
  // final double upContainerwidth;
  // final double upContainerheight;
  // final double lowContainerwidth;
  // final double lowContainerheight;
  ButtonStackStyle({
    Key? key,
    required this.upCaseText,
    required this.lowCaseText,
    required this.SwitchNavigation,
    // required this.upContainerwidth,
    // required this.upContainerheight,
    // required this.lowContainerwidth,
    // required this.lowContainerheight
  }) : super(key: key);

  @override
  State<ButtonStackStyle> createState() => _ButtonStackStyleState();
}

class _ButtonStackStyleState extends State<ButtonStackStyle> {
  var _StackButtonColor = const Color(0x40000000);
  @override
  Widget build(BuildContext context) {
    final _upCaseText = widget.upCaseText;
    final _lowCaseText = widget.lowCaseText;
    final _SwitchNavigation = widget.SwitchNavigation;
    return Ink(
      width: MediaQuery.of(context).size.width * 0.305,
      height: MediaQuery.of(context).size.height * 0.065,
      child: InkWell(
        onTap: () {
          setState(() {
            _StackButtonColor = Colors.black;
            Future.delayed(const Duration(milliseconds: 200), () {
              setState(() {
                _StackButtonColor = const Color(0x40000000);
              });
            });
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => _SwitchNavigation));
          });
        },
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.055,
                color: _StackButtonColor),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.055,
                color: Colors.white,
                child: Center(
                  child: (RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: _upCaseText,
                        style: GoogleFonts.vt323(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 24),
                      ),
                      TextSpan(
                        text: _lowCaseText,
                        style: GoogleFonts.vt323(
                            color: Colors.black, fontSize: 24),
                      )
                    ]),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
