import 'package:flutter/material.dart';

class Operator extends StatelessWidget {
  final String text;
  final String time;

  const Operator({
    Key? key,
    required this.text,
    required this.time,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xb2ffc242),
                  offset: Offset(0, 3),
                  blurRadius: 15,
                ),
              ],
              color: Color(0xffFF9F2F),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Text(text.toString()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              time,
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 12,
                color: const Color(0x8043425d),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
