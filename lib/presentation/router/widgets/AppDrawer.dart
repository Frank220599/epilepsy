import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../screens/home/screen.dart';
import 'custom_drawer.dart';

class AppDrawer extends StatelessWidget {
  final ZoomDrawerController _controller = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_controller.isOpen!()) {
          _controller.close!();
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: () => _controller.close!(),
          child: ZoomDrawer(
            clipMainScreen: false,
            controller: _controller,
            mainScreen: Container(
              child: HomeScreen(),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    offset: Offset(0, 3),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
            menuScreen: CustomDrawer(),
            slideWidth: MediaQuery.of(context).size.width * .65,
            openCurve: Curves.fastOutSlowIn,
            mainScreenScale: .25,
            angle: 0,
          ),
        ),
      ),
    );
  }
}

// Adobe XD layer: '1_Main – 2' (shape)
