import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../components/drwer_component.dart';
import '../../controller/home_controller.dart';
import '../../core/constants/colors.dart';


class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(''),//cubit.titles[cubit.currentIndex].trx(context)
      ),
      body: Center(),//cubit.bottomScreens[cubit.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white38,
          selectedItemColor: mainColor,
          unselectedItemColor: Colors.black54,
          onTap: ((index) {
           // cubit.changeBottom(index);
          }),
         // currentIndex: cubit.currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home',//.trx(context)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.post_add), label: 'posts',//.trx(context)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification',//.trx(context)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks_rounded), label: 'my_Booking',//.trx(context)
            ),
          ]),
    );;



  }
}