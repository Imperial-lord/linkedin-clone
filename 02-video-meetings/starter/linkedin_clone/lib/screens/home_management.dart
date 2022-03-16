import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/chat/chat_list.dart';
import 'package:linkedin_clone/screens/main_app/home_screen.dart';
import 'package:linkedin_clone/screens/main_app/jobs_screen.dart';
import 'package:linkedin_clone/screens/main_app/network_screen.dart';
import 'package:linkedin_clone/screens/main_app/notification_screen.dart';
import 'package:linkedin_clone/screens/main_app/post_screen.dart';
import 'package:linkedin_clone/widgets/home_management/drawer_screen.dart';
import 'package:provider/provider.dart';

import '../stores/login_store.dart';

class HomeManagement extends StatefulWidget {
  const HomeManagement({Key? key}) : super(key: key);
  static String id = 'home-management';

  @override
  State<HomeManagement> createState() => _HomeManagementState();
}

class _HomeManagementState extends State<HomeManagement> {
  int _index = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const NetworkScreen(),
    const PostScreen(),
    const NotificationScreen(),
    const JobsScreen()
  ];

  String image =
      'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg';
  @override
  void initState() {
    LoginStore loginStore = Provider.of<LoginStore>(context, listen: false);
    image = (loginStore.firebaseUser?.photoURL)!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: CircleAvatar(backgroundImage: NetworkImage(image)),
          );
        }),
        title: CupertinoTextField(
          style: Theme.of(context).textTheme.subtitle1,
          prefix: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              )),
          placeholder: 'Search',
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, ChatList.id),
              icon: const Icon(Icons.chat)),
        ],
      ),
      drawer: const DrawerScreen(),
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (selectedIndex) => setState(() => _index = selectedIndex),
        currentIndex: _index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Network'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center), label: 'Jobs'),
        ],
      ),
    );
  }
}
