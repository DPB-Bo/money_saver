import 'package:flutter/material.dart';

class TextfieldStackStyle extends StatefulWidget {
  TextfieldStackStyle({Key? key}) : super(key: key);

  @override
  State<TextfieldStackStyle> createState() => _TextfieldStackStyleState();
}

class _TextfieldStackStyleState extends State<TextfieldStackStyle> {
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
          backgroundColor: const Color(0xFFE9E9E9),
          body: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                Container(
                  child: Column(
                    children: [Column()],
                  ),
                )
              ]))
            ],
          )),
    );
  }
}
