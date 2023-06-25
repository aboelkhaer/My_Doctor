import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../components/general_component.dart';
import '../../controller/home_controller.dart';
import '../../core/constants/colors.dart';


class NotificationScreen extends GetView<HomeController> {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: background,

      body: Column(
        children: [
          Center(
            child: Card(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Lorem ipsum is placeholder text commonly used in the graphic, '
                      'print, and publishing industries for previewing layouts and visual mockups.'),
                ),

              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Lorem ipsum is placeholder text commonly used in the graphic, '
                      'print, and publishing industries for previewing layouts and visual mockups.'),
                ),

              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Lorem ipsum is placeholder text commonly used in the graphic, '
                      'print, and publishing industries for previewing layouts and visual mockups.'),
                ),

              ),
            ),
          ),
        ],
      ),
    );

  }
}