import '../../../../../application/profile_controller.dart';
import '../../../../../domain/config/colors.dart';
import './widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoCard extends GetView<ProfileController> {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = controller.profile();
    String codeArea = data.phone!.substring(0, 3);
    String codeCompany = data.phone!.substring(3, 5);
    String number = data.phone!.substring(5);
    String formattedPhoneNumber = '+$codeArea ($codeCompany) $number';
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: 122.0,
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
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          UserAvatar(),
          const SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedPhoneNumber,
                style: const TextStyle(
                  color: Palette.darkBlue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 13.0),
              Text(
                'ID: ${data.id.toString()}',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Palette.drugSubtitle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
