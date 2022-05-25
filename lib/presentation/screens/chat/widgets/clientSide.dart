import 'package:flutter/material.dart';

class ClientSide extends StatelessWidget {
  final String text;
  final String time;

  const ClientSide({
    Key? key,
    required this.text,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width / 2,
                decoration: const BoxDecoration(
                  color: Color(0xffEFF1F2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Text(text.toString()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  time,
                  style: const TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 12,
                    color: Color(0x8043425d),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
