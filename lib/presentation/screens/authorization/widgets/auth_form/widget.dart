import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './widgets/bottom_text.dart';
import './widgets/phone_input.dart';
import './widgets/top_text.dart';

class AuthForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: const Color(0xffffffff),
        border: Border.all(width: 2.0, color: const Color(0xffffffff)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1a303030),
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        children: [
          TopText(),
          Container(
            height: 44,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: const Color(0xfffafafa),
              border: Border.all(width: 1.0, color: const Color(0xffdbdbdb)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 9),
                  child: SvgPicture.string(
                    '<svg viewBox="297.0 382.0 13.9 24.0" ><path transform="translate(0.0, 0.0)" d="M 309.3214111328125 382.0000305175781 L 298.620849609375 382.0000305175781 C 297.7302856445312 382.0000305175781 297 382.7302856445312 297 383.6208801269531 L 297 404.3791809082031 C 297 405.2697448730469 297.7302856445312 406.0000305175781 298.620849609375 406.0000305175781 L 309.3214111328125 406.0000305175781 C 310.2120056152344 406.0000305175781 310.9422607421875 405.2697448730469 310.9422607421875 404.3791809082031 L 310.9422607421875 383.6208801269531 C 310.9422607421875 382.7302856445312 310.2120056152344 382.0000305175781 309.3214111328125 382.0000305175781 L 309.3214111328125 382.0000305175781 Z M 302.2602844238281 383.1683044433594 L 305.6819763183594 383.1683044433594 C 305.7925720214844 383.1683044433594 305.879150390625 383.2557373046875 305.879150390625 383.3663024902344 C 305.879150390625 383.4734497070312 305.7925720214844 383.5600280761719 305.6819763183594 383.5600280761719 L 302.2602844238281 383.5600280761719 C 302.1496887207031 383.5600280761719 302.0622863769531 383.4734497070312 302.0622863769531 383.3663024902344 C 302.0622863769531 383.2557373046875 302.1496887207031 383.1683044433594 302.2602844238281 383.1683044433594 L 302.2602844238281 383.1683044433594 Z M 303.9711303710938 405.1900024414062 C 303.5220031738281 405.1900024414062 303.1611328125 404.8283081054688 303.1611328125 404.3791809082031 C 303.1611328125 403.9308776855469 303.5220031738281 403.5691528320312 303.9711303710938 403.5691528320312 C 304.41943359375 403.5691528320312 304.7811279296875 403.9308776855469 304.7811279296875 404.3791809082031 C 304.7811279296875 404.8283081054688 304.41943359375 405.1900024414062 303.9711303710938 405.1900024414062 L 303.9711303710938 405.1900024414062 Z M 309.8134155273438 403.0000305175781 L 298.1279907226562 403.0000305175781 L 298.1279907226562 384.5714416503906 L 309.8134155273438 384.5714416503906 L 309.8134155273438 403.0000305175781 Z M 309.8134155273438 403.0000305175781" fill="#002c47" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  '+998',
                  style: TextStyle(
                    fontFamily: 'Avenir-Heavy',
                    fontSize: 16,
                    color: const Color(0xff0f0f0f),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 1,
                  height: 24,
                  color: Color(0xffCACACA),
                ),
                PhoneInput(),
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
          BottomText(),
        ],
      ),
    );
  }
}
