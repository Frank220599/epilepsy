import 'package:flutter/material.dart';

class SeizureTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 124,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffeaebf3),
        boxShadow: [
          BoxShadow(
            color: const Color(0x3924415d),
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
          BoxShadow(
            color: const Color(0xb2ffffff),
            offset: Offset(-2, -2),
            blurRadius: 3,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Без припадков',
            style: TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 14,
              color: const Color(0xff0e3062),
              letterSpacing: 0.003920000016689301,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCell(title: '02:', subTitle: 'дни'),
              _buildCell(title: '08:', subTitle: 'часы'),
              _buildCell(title: '32', subTitle: 'мин'),
            ],
          )
        ],
      ),
    );
  }

  _buildCell({title, subTitle}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: 35,
            color: const Color(0xff0e3062),
            letterSpacing: 0.009800000041723251,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: 14,
            color: const Color(0xff74839a),
            letterSpacing: 0.003920000016689301,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
