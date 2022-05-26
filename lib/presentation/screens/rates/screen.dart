import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/rates_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/rates.dart';
import 'widgets/user_rates.dart';

var tabs = [
  'Купить'.tr,
  'Купленные'.tr,
];

class RatesScreen extends StatefulWidget {
  const RatesScreen({Key? key}) : super(key: key);

  @override
  _RatesScreenState createState() => _RatesScreenState();
}

class _RatesScreenState extends State<RatesScreen> {
  int tabIndex = 0;
  final controller = Get.put(RatesController());

  @override
  void initState() {
    controller.getUserRates();
    super.initState();
  }

  void setTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  Widget _buildTypeItem({required String text, required int index}) {
    final isActive = index == tabIndex;
    return Expanded(
      child: GestureDetector(
        onTap: () => setTabIndex(index),
        child: Container(
          height: 40,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          decoration: _applyDecoration(isActive),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 15,
              color: Color(isActive ? 0xffffffff : 0xff9f5dd9),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }

  Widget _buildList() {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildTypeItem(text: tabs[0], index: 0),
          const SizedBox(width: 20),
          _buildTypeItem(text: tabs[1], index: 1),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: 'rates'.tr,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildList(),
            [
              const Rates(),
              const UserRates(),
            ][tabIndex],
          ],
        ),
      ),
    );
  }

  BoxDecoration _applyDecoration(bool active) {
    if (active) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(250.0),
        color: const Color(0xffedeef2),
        gradient: const LinearGradient(
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xffad6ee5), Color(0xff9749db)],
          stops: [0.0, 1.0],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xb2ffffff),
            offset: Offset(-2, -2),
            blurRadius: 3,
          ),
        ],
      );
    } else {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(250.0),
        color: const Color(0xffeaebf3),
        border: Border.all(width: 1.0, color: const Color(0xff9f5dd9)),
        boxShadow: const [
          BoxShadow(
            color: Color(0xb2ffffff),
            offset: Offset(-2, -2),
            blurRadius: 3,
          ),
        ],
      );
    }
  }
}
