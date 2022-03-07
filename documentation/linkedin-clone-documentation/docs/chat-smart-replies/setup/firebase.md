---
sidebar_position: 3
---

# Firebase

For this project we are going to use Firebase. Firebase is a platform developed by Google for creating mobile and web applications. It is best described as BaaS (Backend as a Service). It has a lot of inbuilt features, which we will use to our advantage such as Authentication, NoSQL DB, Cloud Storage, Functions, Notifications, Analytics, Hosting, etc.

## Adding application to Firebase

After creating your new Firebase project, add applications to firebase. You can do that by clicking on the add app button. The instructions are straight forward from there and are well-documented in the [Firebase docs](https://firebase.google.com/docs).

![Firebase](/img/tutorial/chat-smart-replies/firebase.png)

Keep in mind the following points while adding applications to Firebase.

- Add Android/iOS apps as per your requirement and OS. Enable all required features in the Firebase console - such as authentication, cloud firestore, firebase storage, etc.
- Ensure that you have activated authentication for Google, GitHub, and Email-Password because we will make use of these for authenticating users into our application.
- Add `SHA1` and `SHA256` keys since they will be needed for enabling authentication in case of Android.
- While adding applications, you will need to follow instructions to make changes to your apps, and add files. Notably ensure that you have added the files `GoogleService-Info.plist` and `google-services.json` appropriately in the project.

## Explore FlutterFire

FlutterFire is a set of Flutter plugins which connect your Flutter application to Firebase. It comes in really handy when working because it has a complete list of all plugins you will need, and also has Dart code written to explain their use cases.

We will however, need to run only 1 command in our case to create the `firebase_options.dart` file.

```bash
# Install the CLI if not already done so
dart pub global activate flutterfire_cli

# Run the `configure` command, select a Firebase project and platforms
flutterfire configure
```

The commands will guide you to select your project, check if your apps have been added and then create the `firebase_options.dart` file for you. This will be later useful when we initialise firebase in our `main.dart` file as below -

```dart title="lib/main.dart"
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /* more lines of code*/

  runApp(const MyApp());
}
```
