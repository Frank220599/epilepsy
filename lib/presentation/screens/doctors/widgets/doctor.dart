import 'package:epilepsy/models/doctor.dart';
import 'package:epilepsy/widgets/app_button.dart';
import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  final DoctorModel data;
  final VoidCallback onTap;

  const Doctor({
    Key? key,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
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
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Image(
                  width: 100,
                  image: NetworkImage(data.profile.avatar),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfo(
                    label: 'ФИО',
                    text: data.profile.name,
                  ),
                  _buildInfo(
                    label: 'Стаж',
                    text: data.profile.experience,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: AppButton(
              fontSize: 14,
              width: 140,
              height: 30,
              marginBottom: 0,
              label: 'Начать сессию',
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }

  _buildInfo({label, text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff0e3062),
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 14,
              color: Color(0xff0e3062),
            ),
          ),
        ],
      ),
    );
  }
}
