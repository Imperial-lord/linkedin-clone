import 'package:flutter/material.dart';
import 'package:linkedin_clone/stores/login_store.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static String id = 'settings-screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List listTileData = [
    {
      'header': 'Account preferences',
      'description':
          'Options for managing your account and experience on LinkedIn',
      'icon': const Icon(Icons.account_circle),
    },
    {
      'header': 'Sign in & security',
      'description':
          'Options for managing your account and experience on LinkedIn',
      'icon': const Icon(Icons.lock),
    },
    {
      'header': 'Visibility',
      'description':
          'Options for managing your account and experience on LinkedIn',
      'icon': const Icon(Icons.visibility),
    },
    {
      'header': 'Communications',
      'description':
          'Options for managing your account and experience on LinkedIn',
      'icon': const Icon(Icons.mail),
    },
    {
      'header': 'Data Privacy',
      'description':
          'Options for managing your account and experience on LinkedIn',
      'icon': const Icon(Icons.security),
    },
    {
      'header': 'Advertising data',
      'description':
          'Options for managing your account and experience on LinkedIn',
      'icon': const Icon(Icons.newspaper),
    },
  ];

  List<String> listSmallerTiles = [
    'Help Center',
    'Privacy Policy',
    'Accessibility',
    'User agreement',
    'End User License Agreement'
  ];

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black54;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Settings'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.help)),
        ],
      ),
      body: Consumer<LoginStore>(builder: (_, loginStore, __) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < listTileData.length; i++)
                    Column(
                      children: [
                        ListTile(
                          onTap: () {},
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                          leading: listTileData[i]['icon'],
                          title: Text(
                            listTileData[i]['header'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(listTileData[i]['description']),
                        ),
                        const Divider(),
                      ],
                    ),
                  for (int i = 0; i < listSmallerTiles.length; i++)
                    ListTile(
                      onTap: () {},
                      title: Text(
                        listSmallerTiles[i],
                        style: TextStyle(
                            color: color, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ListTile(
                    onTap: () {
                      loginStore.signOut(context);
                    },
                    title: Text(
                      'Sign Out',
                      style:
                          TextStyle(color: color, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'VERSION: 4.1.672',
                    style: TextStyle(color: color, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
