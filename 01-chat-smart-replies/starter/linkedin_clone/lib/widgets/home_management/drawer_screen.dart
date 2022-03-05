import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/settings/settings_screen.dart';
import 'package:linkedin_clone/stores/login_store.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  void settingsHandler() {
    Navigator.pop(context);
    Navigator.pushNamed(context, SettingsScreen.id);
  }

  String name = 'Default name',
      image =
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg';

  @override
  void initState() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    LoginStore loginStore = Provider.of<LoginStore>(context, listen: false);
    name = userStore.user.name!;
    image = (loginStore.firebaseUser?.photoURL)!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Material(
              elevation: 1,
              child: InkWell(
                onTap: () {},
                child: Ink(
                  color: Colors.grey[300],
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(image), radius: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: const Text('View Profile',
                                      style: TextStyle(color: Colors.blue))),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text('•',
                                    style: TextStyle(color: Colors.black)),
                              ),
                              GestureDetector(
                                  onTap: () => settingsHandler(),
                                  child: const Text('Settings',
                                      style: TextStyle(color: Colors.blue))),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.close, color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Ink(
                        color: Colors.grey[300],
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            const Icon(Icons.square_rounded,
                                color: Colors.amber),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Try Premium for free'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    customListTile(
                        1, Icons.web, 'Sample Page', 'Pages you manage', false),
                    const Divider(),
                    customListTile(3, Icons.calendar_today,
                        'Sample upcoming event', 'Recent', false),
                    const Divider(),
                    customListTile(
                        2, Icons.group, 'Sample group', 'Groups', true),
                    const Divider(),
                    customListTile(
                        1, Icons.add, 'Create an event', 'Events', true),
                    const Divider(),
                    customListTile(
                        3, Icons.tag, 'sample tag', 'Followed Hashtags', true),
                    const Divider(),
                    TextButton(
                        onPressed: () {}, child: const Text('Discover more')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customListTile(int n, IconData iconData, String label, String heading,
      bool isHeadingButton) {
    Widget headingWidget = Padding(
      padding: const EdgeInsets.all(10),
      child: Text(heading),
    );
    if (isHeadingButton == true) {
      headingWidget = TextButton(onPressed: () {}, child: Text(heading));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headingWidget,
        for (int i = 0; i < n; i++)
          ListTile(
            onTap: () {},
            horizontalTitleGap: 0,
            leading: Icon(iconData),
            title: Text(label),
          ),
      ],
    );
  }
}
