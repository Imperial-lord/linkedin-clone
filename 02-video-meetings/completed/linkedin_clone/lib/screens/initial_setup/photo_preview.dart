import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/main.dart';
import 'package:linkedin_clone/screens/initial_setup/looking_for_job.dart';
import 'package:linkedin_clone/stores/login_store.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:provider/provider.dart';

class PhotoPreview extends StatefulWidget {
  const PhotoPreview({Key? key}) : super(key: key);
  static String id = 'photo-preview';

  @override
  State<PhotoPreview> createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
  late String jobTitle, recentCompany;

  @override
  void initState() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    jobTitle = userStore.user.jobTitle!;
    recentCompany = userStore.user.recentCompany!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color? color = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.grey[300];

    void onPressedHandler() {
      Navigator.pushNamed(context, LookingForJob.id);
    }

    return Consumer<LoginStore>(builder: (_, loginStore, __) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon/linkedin-word.png',
                  scale: 50,
                ),
                const SizedBox(height: 50),
                Text(
                    'Use your photo from ${sharedPreferences.getString('login-provider')} to help people recognise you',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Stack(children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage((loginStore
                                      .firebaseUser?.photoURL
                                      ?.replaceFirst('s96-c', 's384-c'))!),
                                  radius: 60,
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Icon(
                                    CupertinoIcons.pencil_circle_fill,
                                    color: color,
                                    size: 40,
                                  ),
                                ),
                              ]),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                    (loginStore.firebaseUser?.displayName)!,
                                    style:
                                        Theme.of(context).textTheme.headline4),
                              ),
                              Text('$jobTitle at $recentCompany',
                                  style: Theme.of(context).textTheme.subtitle1),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () => onPressedHandler(),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: Theme.of(context).primaryTextTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () => onPressedHandler(),
                  style:
                      TextButton.styleFrom(padding: const EdgeInsets.all(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Skip for now',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
