import 'package:epilepsy/config/icons.dart';
import 'package:epilepsy/controllers/profile_controller.dart';
import 'package:epilepsy/controllers/session_controller.dart';
import 'package:epilepsy/utils/sizes.dart';
import 'package:epilepsy/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/widgets.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controller = Get.find<SessionsController>();

  final scController = ScrollController(initialScrollOffset: Get.height);

  @override
  void initState() {
    controller.getSessionsMessages();
    super.initState();
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
          title: 'chat'.tr,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Expanded(
              child: Obx(() {
                if (controller.isMessagesLoading()) {
                  return Center(child: CircularProgressIndicator());
                } else if (!controller.isMessagesLoading() &&
                    controller.isMessagesError()) {
                  return Text('errorTryAgain'.tr);
                } else if (controller.messages.isEmpty) {
                  return Center(
                    child: Text('emptyMessages'.tr),
                  );
                }
                return ListView.builder(
                  controller: scController,
                  padding: const EdgeInsets.fromLTRB(30, 30, 16, 20),
                  itemCount: controller.messages.length,
                  itemBuilder: (context, index) {
                    final item = controller.messages[index];
                    final time = item.createdAt.split(' ')[1];
                    final bool isMe =
                        Get.find<ProfileController>().profile.value.id ==
                            item.userId;
                    if (isMe) {
                      return Operator(
                        text: item.message,
                        time: time,
                      );
                    }
                    return ClientSide(
                      text: item.message,
                      time: time,
                    );
                  },
                );
              }),
            ),
            Container(
              height: 48,
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 22,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xfffbf9f9),
                border: Border.all(width: 2.0, color: const Color(0xffffffff)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1a303030),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Buttons(),
            ),
          ],
        ),
      ),
    );
  }
}
