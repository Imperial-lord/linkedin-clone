import 'package:flutter/material.dart';
import 'package:linkedin_clone/main.dart';
import 'package:linkedin_clone/screens/initial_setup/professional_info.dart';
import 'package:linkedin_clone/services/validations.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:provider/provider.dart';

class ConfirmLocation extends StatefulWidget {
  const ConfirmLocation({Key? key}) : super(key: key);
  static String id = 'confirm-location';

  @override
  State<ConfirmLocation> createState() => _ConfirmLocationState();
}

class _ConfirmLocationState extends State<ConfirmLocation> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = sharedPreferences.getString('current-address')!;
    super.initState();
  }

  void onPressedHandler() {
    bool next = checkAddressEmpty(controller.text, context);
    Provider.of<UserStore>(context, listen: false)
        .setUserAddressAndLocation(controller.text);
    if (next) {
      Navigator.pushNamed(context, ProfessionalInfo.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.vertical -
                  40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon/linkedin-word.png',
                    scale: 50,
                  ),
                  const SizedBox(height: 50),
                  Text('Confirm your location',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text('See people, jobs, and news in your area.',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.grey)),
                  const SizedBox(height: 30),
                  Text(
                    'Location*',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.grey),
                  ),
                  TextField(controller: controller),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
