import 'package:flutter/material.dart';
import 'package:linkedin_clone/main.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:provider/provider.dart';

import '../../requests/firebase_data.dart';
import '../../screens/home_management.dart';

void onPressedHandler(String label, BuildContext context) {
  UserStore userStore = Provider.of<UserStore>(context, listen: false);
  if (label == 'Yes') {
    userStore.setUserLookingForJob(true);
  } else {
    userStore.setUserLookingForJob(false);
  }

  // At this stage everything is done and stored in Provider
  // We shall send a request to Cloud Firestore
  setUserDataInFirestore(userStore.user);
  sharedPreferences.setBool('details-in-firestore', true);

  // Then move the home management screen
  Navigator.pushNamed(context, HomeManagement.id);
}

Widget jobButton(String label, BuildContext context) {
  return OutlinedButton(
    onPressed: () => onPressedHandler(label, context),
    style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    ),
  );
}
