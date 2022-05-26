import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../application/seizure_controller.dart';
import '../../domain/config/colors.dart';
import '../../domain/config/icons.dart';
import '../../domain/constants/routes.dart';
import '../../domain/utils/epilepsy_icons.dart';
import '../../domain/utils/sizes.dart';
import '../widgets/custom_app_bar.dart';
import 'home/widgets/seizure_card.dart';

class CalendarScreen extends GetView<SeizureController> {
  const CalendarScreen({Key? key}) : super(key: key);

  String formatDate(DateTime date) {
    return date.toString().split(' ')[0];
  }

  void _onDaySelected(DateTime day, List events, List holidays) {
    controller.getSeizureByDate(formatDate(day));
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {}

  void _onCalendarCreated(
    DateTime first,
    DateTime last,
    CalendarFormat format,
  ) {
    controller.getSeizureByDate(formatDate(DateTime.now()));
  }

  Widget _buildTableCalendar() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 9.0,
        right: 9.0,
        bottom: 20.0,
      ),
      margin: const EdgeInsets.only(
        bottom: 20.0,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Palette.scaffoldBackgorund,
        borderRadius: BorderRadius.circular(8.0),
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
      child: TableCalendar(
        locale: 'ru_Ru',
        startingDayOfWeek: StartingDayOfWeek.monday,
        rowHeight: 50.0,
        daysOfWeekStyle: DaysOfWeekStyle(
          dowTextFormatter: (date, locale) =>
              DateFormat.E(locale).format(date)[0],
          weekdayStyle: const TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
          weekendStyle: const TextStyle(
            color: Colors.black,
            fontSize: 13.0,
          ),
        ),
        // calendarStyle: CalendarStyle(
        //   selectedColor: Palette.calendarSelected,
        //   weekendStyle: TextStyle(color: Colors.black, fontSize: 17.0),
        //   weekdayStyle: TextStyle(color: Colors.black, fontSize: 17.0),
        //   todayColor: Colors.deepOrange[200],
        //   markersColor: Palette.calendarMarker,
        //   outsideDaysVisible: true,
        //   outsideWeekendStyle: TextStyle(
        //     color: Palette.calendarOutDays,
        //     fontSize: 17.0,
        //   ),
        //   markersAlignment: Alignment.topRight,
        //   markersMaxAmount: 1,
        //   markersPositionTop: -30,
        //   markersPositionRight: 5,
        //   markersPositionBottom: 0,
        // ),
        headerStyle: HeaderStyle(
          headerPadding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 5,
          ),
          headerMargin: const EdgeInsets.only(
            bottom: 20,
            top: 1,
            left: 1,
            right: 1,
          ),
          titleTextStyle: TextStyle(
            fontFamily: 'SF-UI-Display',
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(.9),
            letterSpacing: 1.1,
          ),
          decoration: BoxDecoration(
            color: Palette.scaffoldBackgorund,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3924415d),
                spreadRadius: 1.0,
                blurRadius: 1,
                offset: Offset(-1, -1),
              ),
              BoxShadow(
                color: Color(0xb2ffffff),
                spreadRadius: 1.0,
                blurRadius: 1,
                offset: Offset(1, 1),
              )
            ],
          ),
          // centerHeaderTitle: true,
          formatButtonVisible: false,
          leftChevronIcon: const Icon(
            EpilepsyIcons.left_open,
            size: 16.0,
            color: Palette.grey,
          ),
          rightChevronIcon: const Icon(
            EpilepsyIcons.right_open,
            size: 16.0,
            color: Palette.grey,
          ),
        ),
        focusedDay: DateTime.now(),
        lastDay: DateTime.now()..add(const Duration(days: 365)),
        firstDay: DateTime.now(),
        // onDaySelected: _onDaySelected,
        // onVisibleDaysChanged: _onVisibleDaysChanged,
        // onCalendarCreated: _onCalendarCreated,
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
          title: 'calendar'.tr,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _buildTableCalendar(),
            Obx(() {
              if (controller.seizuresByDate.isLoading()) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (controller.seizuresByDate.data.isEmpty) {
                return const Center(
                  child: Text('Нет приступов'),
                );
              }

              return Column(
                children: List.generate(
                  controller.seizuresByDate.data.length,
                  (index) {
                    final item = controller.seizuresByDate.data[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () => Get.toNamed(
                          ROUTES.ADD_SEIZURE,
                          arguments: item,
                        ),
                        child: SeizureCard(
                          date: item.date.split(' '),
                          duration: item.duration,
                          activity: item.activity,
                          type: item.place,
                          reason: item.reason,
                          place: item.place,
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
