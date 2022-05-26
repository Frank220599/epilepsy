import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../application/seizure_controller.dart';
import '../../domain/config/icons.dart';
import '../../domain/utils/sizes.dart';
import '../widgets/bar_chart_sample.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/pie_chart_sample.dart';

const types = [
  'frequency',
  'distribution',
  'type',
  'reason',
  'activity',
  'place'
];

class SeizuresScreen extends StatefulWidget {
  const SeizuresScreen({Key? key}) : super(key: key);

  @override
  _SeizuresScreenState createState() => _SeizuresScreenState();
}

class _SeizuresScreenState extends State<SeizuresScreen> {
  int tabIndex = 0;
  final controller = Get.find<SeizureController>();

  @override
  void initState() {
    controller.getStatistics();
    super.initState();
  }

  void setTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
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

  Widget _buildTypeItem({required String text, required int index}) {
    final isActive = index == tabIndex;
    return GestureDetector(
      onTap: () => setTabIndex(index),
      child: Container(
        margin: const EdgeInsets.only(right: 28),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: _applyDecoration(isActive),
        child: Text(
          text.tr,
          style: TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: 15,
            color: Color(isActive ? 0xffffffff : 0xff9f5dd9),
            letterSpacing: 0.004200000017881393,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Widget _buildList() {
    return Container(
      height: 31,
      margin: const EdgeInsets.only(bottom: 29),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) =>
            _buildTypeItem(text: types[index], index: index),
        itemCount: types.length,
      ),
    );
  }

  Widget _buildFrequency() {
    return Column(
      children: [
        SimpleBarChart(
          controller.statistics.data.first.weekFrequency,
          animate: true,
          title: 'lastWeek'.tr,
        ),
        SimpleBarChart(
          controller.statistics.data.first.monthFrequency,
          animate: true,
          title: 'lastMonth'.tr,
        ),
        SimpleBarChart(
          controller.statistics.data.first.yearFrequency,
          animate: true,
          title: 'lastYear'.tr,
        ),
      ],
    );
  }

  Widget _buildDistribution() {
    return Column(
      children: [
        SimpleBarChart(
          controller.statistics.data.first.distributionByHour,
          animate: true,
          title: 'lastWeek'.tr,
        ),
        SimpleBarChart(
          controller.statistics.data.first.distributionByWeek,
          animate: true,
          title: 'lastMonth'.tr,
        ),
        SimpleBarChart(
          controller.statistics.data.first.distributionByYear,
          animate: true,
          title: 'lastYear'.tr,
        ),
      ],
    );
  }

  Widget _buildPlaces() {
    return Column(
      children: [
        SimplePieChart(
          controller.statistics.data.first.weekPlaces,
          animate: true,
          title: 'lastWeek'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.weekPlaces,
          animate: true,
          title: 'lastMonth'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.yearPlaces,
          animate: true,
          title: 'lastYear'.tr,
        ),
      ],
    );
  }

  Widget _buildTypes() {
    return Column(
      children: [
        SimplePieChart(
          controller.statistics.data.first.weekTypes,
          animate: true,
          title: 'lastWeek'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.monthTypes,
          animate: true,
          title: 'lastMonth'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.yearTypes,
          animate: true,
          title: 'lastYear'.tr,
        ),
      ],
    );
  }

  Widget _buildActivities() {
    return Column(
      children: [
        SimplePieChart(
          controller.statistics.data.first.weekActivities,
          animate: true,
          title: 'lastWeek'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.monthActivities,
          animate: true,
          title: 'lastMonth'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.yearActivities,
          animate: true,
          title: 'lastYear'.tr,
        ),
      ],
    );
  }

  Widget _buildReasons() {
    return Column(
      children: [
        SimplePieChart(
          controller.statistics.data.first.weekReasons,
          animate: true,
          title: 'lastWeek'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.monthReasons,
          animate: true,
          title: 'lastMonth'.tr,
        ),
        SimplePieChart(
          controller.statistics.data.first.yearReasons,
          animate: true,
          title: 'lastYear'.tr,
        ),
      ],
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
          title: 'tendencies'.tr,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: <Widget>[
            _buildList(),
            Obx(() {
              if (controller.statistics.isLoading()) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return [
                  _buildFrequency(),
                  _buildDistribution(),
                  _buildTypes(),
                  _buildReasons(),
                  _buildActivities(),
                  _buildPlaces(),
                ][tabIndex];
              }
            }),
          ],
        ),
      ),
    );
  }
}
