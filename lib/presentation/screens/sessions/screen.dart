import 'package:epilepsy/presentation/screens/sessions/widgets/session.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/session_controller.dart';
import '../../../domain/config/icons.dart';
import '../../../domain/utils/sizes.dart';
import '../../widgets/custom_app_bar.dart';

class SessionsScreen extends StatelessWidget {
  final controller = Get.put(
    SessionsController(),
    permanent: true,
  );

  SessionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getSessions();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(GetSize.width, 100.0),
        child: CustomAppBar(
          onTap: () => Get.back(),
          hasAction: false,
          leading: AppIcons.back,
          title: 'sessions'.tr,
        ),
      ),
      body: Obx(() {
        final data = controller.sessions;
        if (controller.isSessionsLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.isSessionsError.value) {
          return const Center(
            child: Text('Error '),
          );
        } else if (data.isEmpty) {
          return const Center(
            child: Text('No sessions'),
          );
        }
        return ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: data.length,
          itemBuilder: (_, index) => Session(data: data[index]),
        );
      }),
    );
  }
}
