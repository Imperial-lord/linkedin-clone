import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:github_sign_in/github_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:linkedin_clone/main.dart';
import 'package:linkedin_clone/screens/initial_setup/confirm_location.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../screens/home_management.dart';
import '../screens/initial_setup/login.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @observable
  User? firebaseUser;

  @action
  Future<bool> isAlreadyAuthenticated(BuildContext context) async {
    firebaseUser = _auth.currentUser;
    if (firebaseUser != null) {
      setPersonalDetailsForLoggedInUser(firebaseUser!, context);
      return true;
    } else {
      return false;
    }
  }

  @action
  Future<void> signInWithGoogle(BuildContext context) async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    await _auth.signInWithCredential(credential).then((UserCredential value) {
      if (value.user != null) {
        debugPrint('Google authentication successful');
        sharedPreferences.setString('login-provider', 'Google');
        onAuthenticationSuccessful(context, value);
      } else {
        debugPrint('Something is wrong!');
      }
    });
  }

  @action
  Future<void> signInWithGithub(BuildContext context) async {
    final githubSignIn = GitHubSignIn(
        clientId: 'clientid',
        clientSecret: 'clientsecret',
        redirectUrl: 'callbackurl');

    final authResult = await githubSignIn.signIn(context);
    final githubAuthCredential =
        GithubAuthProvider.credential(authResult.token!);

    await FirebaseAuth.instance
        .signInWithCredential(githubAuthCredential)
        .then((UserCredential value) {
      if (value.user != null) {
        debugPrint('GitHub authentication successful');
        sharedPreferences.setString('login-provider', 'GitHub');
        onAuthenticationSuccessful(context, value);
      } else {
        debugPrint('Something is wrong!');
      }
    });
  }

  Future<void> onAuthenticationSuccessful(
      BuildContext context, UserCredential result) async {
    firebaseUser = result.user;
    setPersonalDetailsForLoggedInUser(firebaseUser!, context);
    Widget nextPage = const ConfirmLocation();
    if (sharedPreferences.containsKey('details-in-firestore') == true) {
      nextPage = const HomeManagement();
    }
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => nextPage), (route) => false);
  }

  void setPersonalDetailsForLoggedInUser(
      User firebaseUser, BuildContext context) {
    String name = firebaseUser.displayName!;
    String email = firebaseUser.email!;
    String uid = firebaseUser.uid;
    Provider.of<UserStore>(context, listen: false)
        .setUserPersonalDetails(name, email, uid);
  }

  @action
  Future<void> signOut(BuildContext context) async {
    await _auth.signOut();
    await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const Login()), (route) => false);
    firebaseUser = null;
  }
}
