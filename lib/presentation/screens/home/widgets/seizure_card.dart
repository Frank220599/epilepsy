import 'package:epilepsy/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeizureCard extends StatelessWidget {
  final String place;
  final String reason;
  final String type;
  final List<String> date;
  final String duration;
  final String activity;

  const SeizureCard({
    required this.place,
    required this.reason,
    required this.type,
    required this.date,
    required this.duration,
    required this.activity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffeaebf3),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3924415d),
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
          BoxShadow(
            color: Color(0xb2ffffff),
            offset: Offset(-2, -2),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (place != null)
                    Text(
                      place,
                      style: TextStyles.trainerCardTitle,
                    ),
                  const SizedBox(height: 10.0),
                  Column(
                    children: [
                      if (type != null)
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.mind,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              type,
                              style: TextStyles.trainerCardText,
                            ),
                          ],
                        ),
                      const SizedBox(height: 10.0),
                      if (reason != null)
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.note,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              reason,
                              style: TextStyles.trainerCardText,
                            ),
                          ],
                        ),
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  if (activity != null)
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.run,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              activity,
                              // 'Экзамен',
                              style: TextStyles.trainerCardText,
                            ),
                          ],
                        ),
                        const SizedBox(width: 10.0),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Container(
            width: 102.0,
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: const LinearGradient(
                begin: Alignment(-0.9, -0.92),
                end: Alignment(1.0, 1.0),
                colors: [Color(0xff6a86e2), Color(0xff4e70de)],
                stops: [0.0, 1.0],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x4b5677e0),
                  offset: Offset(-3, 0),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: 92.0,
                  height: 58.0,
                  padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.calendar,
                            fit: BoxFit.scaleDown,
                          ),
                          const SizedBox(width: 7.0),
                          Text(
                            date[1],
                            style: const TextStyle(
                              fontFamily: 'SF-UI-Display',
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        date[0],
                        style: const TextStyle(
                          fontFamily: 'SF-UI-Display',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 92.0,
                  height: 58.0,
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xff7892e6),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Длительность',
                        style: TextStyle(
                          fontFamily: 'SF-UI-Display',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 11.0,
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.clock,
                            fit: BoxFit.scaleDown,
                          ),
                          const SizedBox(width: 7.0),
                          Text(
                            // '00:27',
                            duration,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'SF-UI-Display',
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
