import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_saver_app/components/buttons/button_stack.dart';

class StartNotLoginScreen extends StatefulWidget {
  const StartNotLoginScreen({Key? key}) : super(key: key);

  @override
  State<StartNotLoginScreen> createState() => _StartNotLoginScreenState();
}

class _StartNotLoginScreenState extends State<StartNotLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFD6E6A),
          Color(0xFFFFC600),
        ],
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/logo_cat.png'),
                        )),
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.29,
                      child: Text(
                        'Let’s get started with us',
                        style: GoogleFonts.robotoMono(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 45, right: 45),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            ButtonStackStyle(
                                upCaseText: 'L', lowCaseText: 'ogin'),
                            ButtonStackStyle(
                                upCaseText: 'S', lowCaseText: 'ignup'),
                          ]),
                    ),
                  ],
                )
              ]))
            ],
          )),
    );
  }
}
