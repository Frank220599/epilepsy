import 'package:epilepsy/conf/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130.0,
      decoration: BoxDecoration(
        color: Palette.card,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(.2),
            blurRadius: 2,
            offset: Offset(2, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Без припадков',
            style: const TextStyle(
              color: Palette.darkBlue,
              fontSize: 14.0,
            ),
          ),
          Text(
            '02:08:32',
            style: const TextStyle(
              fontSize: 35.0,
              letterSpacing: 3.0,
              fontWeight: FontWeight.bold,
              color: Palette.darkBlue,
            ),
          ),
          const SizedBox(height: 4.0),
          Container(
            width: 150.0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'дни'.toUpperCase(),
                    style: const TextStyle(
                      color: Palette.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    'часы'.toUpperCase(),
                    style: const TextStyle(
                      color: Palette.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    'мин'.toUpperCase(),
                    style: const TextStyle(
                      color: Palette.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
