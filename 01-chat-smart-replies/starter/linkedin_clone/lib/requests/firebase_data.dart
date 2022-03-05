// Interact with cloud Firestore, and handle data

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

void setUserDataInFirestore(User user) {
  firebaseFirestore.collection('users').doc(user.uid).set({
    'name': user.name,
    'email': user.email,
    'address': user.address,
    'isStudent': user.isStudent,
    'isLookingForJob': user.isLookingForJob,
    'location': user.location,
    'studentDetails': user.studentDetails,
    'jobDetails': user.jobDetails,
  });
}

Future<Map> getUserDataFromFirestore(String uid) async {
  DocumentSnapshot doc =
      await FirebaseFirestore.instance.collection('users').doc(uid).get();
  Map docData = doc.data() as Map;
  return docData;
}
